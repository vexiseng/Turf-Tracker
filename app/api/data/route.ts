import { and, asc, desc, eq } from "drizzle-orm";
import { getCloudflareUser } from "../../cloudflare-auth";
import { getDb } from "../../../db";
import { applications, auditLog, clients, products, routePresetStops, routePresets, routeStops, staff } from "../../../db/schema";

type Role = "admin" | "office" | "field";
type Actor = { id: string; email: string; name: string; role: Role; certificationNumber: string };
type ApplicationProductInput = { productId?: unknown; name?: unknown; epa?: unknown; pest?: unknown; rate?: unknown; treatedSqFt?: unknown; amountUsed?: unknown };

const now = () => new Date().toISOString();
const uid = () => crypto.randomUUID();

async function actor(): Promise<Actor | null> {
  const user = (await getCloudflareUser()) ?? (process.env.NODE_ENV !== "production"
    ? { userId: "preview-admin", email: "preview@turftrack.local", displayName: "Preview Admin", fullName: "Preview Admin" }
    : null);
  if (!user) return null;
  const db = getDb();
  const existing = await db.select().from(staff).where(eq(staff.email, user.email.toLowerCase())).limit(1);
  if (existing[0]?.active) return { id: existing[0].id, email: existing[0].email, name: existing[0].name || user.displayName, role: existing[0].role, certificationNumber: existing[0].certificationNumber };
  const count = await db.select({ id: staff.id }).from(staff).limit(1);
  if (count.length) return null;
  const first = { id: user.userId, email: user.email.toLowerCase(), name: user.displayName, certificationNumber: "", role: "admin" as const, active: true, createdAt: now() };
  await db.insert(staff).values(first);
  return first;
}

function allowed(a: Actor, roles: Role[]) { return roles.includes(a.role); }
async function audit(a: Actor, action: string, entityType: string, entityId: string, details = "") {
  await getDb().insert(auditLog).values({ id: uid(), actorEmail: a.email, action, entityType, entityId, details, createdAt: now() });
}
function clean(v: unknown) { return String(v ?? "").trim(); }
function n(v: unknown) { const x = Number(v); return Number.isFinite(x) ? x : 0; }

export async function GET() {
  try {
    const a = await actor();
    if (!a) return Response.json({ error: "Your account has not been added to TurfTrack." }, { status: 403 });
    const db = getDb();
    const [clientRows, appRows] = await Promise.all([
      db.select().from(clients).orderBy(asc(clients.lastName), asc(clients.firstName)),
      db.select().from(applications).orderBy(desc(applications.date), desc(applications.createdAt)),
    ]);
    const data: Record<string, unknown> = {
      actor: a,
      clients: clientRows,
      applications: appRows.map((x) => ({ ...x, products: (JSON.parse(x.productsJson || "[]") as ApplicationProductInput[]).map((p) => ({ ...p, treatedSqFt: n(p.treatedSqFt) || x.treatedSqFt })) })),
    };
    if (allowed(a, ["admin", "office"])) {
      const [productRows, stopRows, presetRows, presetStopRows] = await Promise.all([
        db.select().from(products).orderBy(asc(products.name)),
        db.select().from(routeStops).orderBy(asc(routeStops.date), asc(routeStops.stopOrder)),
        db.select().from(routePresets).orderBy(asc(routePresets.round), asc(routePresets.name)),
        db.select().from(routePresetStops).orderBy(asc(routePresetStops.presetId), asc(routePresetStops.stopOrder)),
      ]);
      data.products = productRows.map((x) => ({ ...x, rounds: JSON.parse(x.roundsJson || "[]") }));
      data.routeStops = stopRows;
      data.routePresets = presetRows.map((preset) => ({ ...preset, clientIds: presetStopRows.filter((stop) => stop.presetId === preset.id).map((stop) => stop.clientId) }));
    }
    if (a.role === "admin") {
      data.staff = await db.select().from(staff).orderBy(asc(staff.name), asc(staff.email));
      data.audit = await db.select().from(auditLog).orderBy(desc(auditLog.createdAt)).limit(100);
    }
    return Response.json(data);
  } catch (error) {
    return Response.json({ error: error instanceof Error ? error.message : "Unable to load TurfTrack." }, { status: 500 });
  }
}

export async function POST(request: Request) {
  try {
    const body = await request.json() as Record<string, any>;
    const action = clean(body.action), payload = body.payload ?? {}, db = getDb(), stamp = now();
    const a = await actor();
    if (!a) return Response.json({ error: "Your account has not been added to TurfTrack." }, { status: 403 });

    if (action === "client.save") {
      const editing = Boolean(payload.id);
      if (editing && a.role === "field") return Response.json({ error: "Field staff can add customers but cannot edit existing records." }, { status: 403 });
      const id = clean(payload.id) || uid();
      const values = { firstName: clean(payload.firstName), lastName: clean(payload.lastName), company: clean(payload.company), phone: clean(payload.phone), email: clean(payload.email), address: clean(payload.address), city: clean(payload.city), state: clean(payload.state).toUpperCase(), zip: clean(payload.zip), sqft: n(payload.sqft), routeEligible: payload.routeEligible !== false, notes: clean(payload.notes), updatedAt: stamp };
      if (!values.firstName && !values.lastName && !values.company) return Response.json({ error: "A customer name is required." }, { status: 400 });
      if (editing) await db.update(clients).set(values).where(eq(clients.id, id));
      else await db.insert(clients).values({ id, ...values, createdBy: a.id, createdAt: stamp });
      await audit(a, editing ? "updated" : "created", "client", id, `${values.firstName} ${values.lastName}`.trim());
      return Response.json({ ok: true, id });
    }

    if (action === "client.delete" && allowed(a, ["admin", "office"])) {
      const id = clean(payload.id);
      if (!id) return Response.json({ error: "A customer is required." }, { status: 400 });
      const existing = await db.select().from(clients).where(eq(clients.id, id)).limit(1);
      if (!existing[0]) return Response.json({ error: "That customer no longer exists." }, { status: 404 });
      const application = await db.select({ id: applications.id }).from(applications).where(eq(applications.clientId, id)).limit(1);
      if (application[0]) return Response.json({ error: "This customer has retained application records and cannot be deleted." }, { status: 409 });
      await db.delete(routeStops).where(eq(routeStops.clientId, id));
      await db.delete(routePresetStops).where(eq(routePresetStops.clientId, id));
      await db.delete(clients).where(eq(clients.id, id));
      const name = `${existing[0].firstName} ${existing[0].lastName}`.trim() || existing[0].company || "Unnamed customer";
      await audit(a, "deleted", "client", id, name);
      return Response.json({ ok: true });
    }

    if (action === "product.save" && allowed(a, ["admin", "office"])) {
      const id = clean(payload.id) || uid(), editing = Boolean(payload.id);
      const granularUnits = ["lb", "oz", "g"] as const;
      const granularUnit = granularUnits.find((unit) => unit === clean(payload.unit)) ?? "lb";
      const rounds = Array.isArray(payload.rounds) ? [...new Set(payload.rounds.map(n).filter((round: number) => round >= 1 && round <= 5))] : [];
      const values = { name: clean(payload.name), epa: clean(payload.epa), type: payload.type === "Granular" ? "Granular" as const : "Liquid" as const, rate: n(payload.rate), unit: payload.type === "Granular" ? granularUnit : "oz" as const, pest: clean(payload.pest), roundsJson: JSON.stringify(rounds), notes: clean(payload.notes), updatedAt: stamp };
      if (!values.name || !values.epa || !values.pest) return Response.json({ error: "Product name, EPA registration number, and target pest are required." }, { status: 400 });
      if (editing) await db.update(products).set(values).where(eq(products.id, id));
      else await db.insert(products).values({ id, ...values, createdBy: a.id, createdAt: stamp });
      await audit(a, editing ? "updated" : "created", "product", id, values.name);
      return Response.json({ ok: true, id });
    }

    if (action === "inventory.set" && allowed(a, ["admin", "office"])) {
      const id = clean(payload.id), stockQuantity = Math.max(0, n(payload.stockQuantity));
      if (!id) return Response.json({ error: "A product is required." }, { status: 400 });
      await db.update(products).set({ stockQuantity, updatedAt: stamp }).where(eq(products.id, id));
      await audit(a, "updated", "inventory", id, `${stockQuantity}`);
      return Response.json({ ok: true, id });
    }

    if (action === "application.save" && allowed(a, ["admin", "office"])) {
      const id = clean(payload.id) || uid(), editing = Boolean(payload.id), rawProducts = Array.isArray(payload.products) ? payload.products : [];
      const productList = rawProducts.map((p: Record<string, unknown>) => ({ productId: clean(p.productId), name: clean(p.name), epa: clean(p.epa), rate: n(p.rate), unit: clean(p.unit), pest: clean(p.pest), treatedSqFt: n(p.treatedSqFt), amountUsed: n(p.amountUsed) }));
      const values = { clientId: clean(payload.clientId), round: Math.max(1, Math.min(5, n(payload.round))), treatmentType: payload.treatmentType === "Spot" ? "Spot" as const : "Broadcast" as const, date: clean(payload.date), treatedSqFt: Math.max(0, ...productList.map((p: ApplicationProductInput) => n(p.treatedSqFt))), temperature: n(payload.temperature), windSpeed: n(payload.windSpeed), windDirection: clean(payload.windDirection), startTime: clean(payload.startTime), stopTime: clean(payload.stopTime), applicatorName: clean(payload.applicatorName), applicatorLicense: clean(payload.applicatorLicense), productsJson: JSON.stringify(productList), notes: clean(payload.notes), updatedAt: stamp };
      if (!values.clientId || !values.date || !values.applicatorName || !values.applicatorLicense || !productList.length) return Response.json({ error: "Client, date, applicator name, certification/license number, and at least one product are required." }, { status: 400 });
      if (productList.some((p: ApplicationProductInput) => !clean(p.name) || !clean(p.epa) || !clean(p.pest) || n(p.rate) <= 0 || n(p.treatedSqFt) <= 0 || n(p.amountUsed) <= 0)) return Response.json({ error: "Every applied product needs a product name, EPA number, rate, treated square feet, target pest, and total amount used." }, { status: 400 });
      const existing = editing ? (await db.select().from(applications).where(eq(applications.id, id)).limit(1))[0] : undefined;
      if (editing) await db.update(applications).set(values).where(eq(applications.id, id));
      else await db.insert(applications).values({ id, ...values, inventoryPosted: true, createdBy: a.id, createdAt: stamp });
      if (!editing || existing?.inventoryPosted) {
        const oldProducts = existing?.inventoryPosted ? JSON.parse(existing.productsJson || "[]") as ApplicationProductInput[] : [];
        const productIds = new Set([...oldProducts.map((p) => clean((p as Record<string, unknown>).productId)), ...productList.map((p: Record<string, unknown>) => clean(p.productId))].filter(Boolean));
        for (const productId of productIds) {
          const oldAmount = oldProducts.filter((p) => clean((p as Record<string, unknown>).productId) === productId).reduce((sum, p) => sum + n(p.amountUsed), 0);
          const newAmount = productList.filter((p: Record<string, unknown>) => clean(p.productId) === productId).reduce((sum: number, p: Record<string, unknown>) => sum + n(p.amountUsed), 0);
          const row = (await db.select().from(products).where(eq(products.id, productId)).limit(1))[0];
          if (row) await db.update(products).set({ stockQuantity: row.stockQuantity - (newAmount - oldAmount), updatedAt: stamp }).where(eq(products.id, productId));
        }
      }
      await audit(a, editing ? "updated" : "created", "application", id, `Application ${values.round} on ${values.date}`);
      return Response.json({ ok: true, id });
    }

    if (action === "route.add" && allowed(a, ["admin", "office"])) {
      const date = clean(payload.date), ids = Array.isArray(payload.clientIds) ? payload.clientIds.map(clean) : [];
      const existing = await db.select().from(routeStops).where(eq(routeStops.date, date));
      let order = Math.max(0, ...existing.map((x) => x.stopOrder)) + 1;
      for (const clientId of ids) if (!existing.some((x) => x.clientId === clientId)) await db.insert(routeStops).values({ id: uid(), date, clientId, stopOrder: order++, completed: false, assignedTo: clean(payload.assignedTo), createdBy: a.id, createdAt: stamp });
      await audit(a, "scheduled", "route", date, `${ids.length} jobs`);
      return Response.json({ ok: true });
    }

    if (action === "route.update" && allowed(a, ["admin", "office"])) {
      const id = clean(payload.id);
      await db.update(routeStops).set({ stopOrder: n(payload.stopOrder), completed: Boolean(payload.completed), assignedTo: clean(payload.assignedTo) }).where(eq(routeStops.id, id));
      await audit(a, "updated", "route_stop", id);
      return Response.json({ ok: true });
    }

    if (action === "route.remove" && allowed(a, ["admin", "office"])) {
      const id = clean(payload.id); await db.delete(routeStops).where(eq(routeStops.id, id)); await audit(a, "removed", "route_stop", id); return Response.json({ ok: true });
    }

    if (action === "route.move" && allowed(a, ["admin", "office"])) {
      const id = clean(payload.id), date = clean(payload.date), existingStop = (await db.select().from(routeStops).where(eq(routeStops.id, id)).limit(1))[0];
      if (!existingStop) return Response.json({ error: "That scheduled job no longer exists." }, { status: 404 });
      if (existingStop.completed) return Response.json({ error: "Mark the job incomplete before moving it to another day." }, { status: 409 });
      const destination = await db.select().from(routeStops).where(eq(routeStops.date, date));
      await db.update(routeStops).set({ date, stopOrder: Math.max(0, ...destination.map((x) => x.stopOrder)) + 1 }).where(eq(routeStops.id, id));
      await audit(a, "moved", "route_stop", id, `${existingStop.date} to ${date}`);
      return Response.json({ ok: true });
    }

    if (action === "route.preset.group-wilderness" && allowed(a, ["admin", "office"])) {
      const round = Math.max(1, Math.min(5, Math.floor(n(payload.round)))), year = Math.floor(n(payload.year)) || Number(new Date().getFullYear());
      const [clientRows, presetRows, presetStopRows] = await Promise.all([
        db.select().from(clients),
        db.select().from(routePresets).where(and(eq(routePresets.round, round), eq(routePresets.year, year))),
        db.select().from(routePresetStops).orderBy(asc(routePresetStops.stopOrder)),
      ]);
      const presetIds = new Set(presetRows.map((preset) => preset.id));
      const name = (client: typeof clientRows[number]) => `${client.firstName} ${client.lastName} ${client.company}`.trim().toLowerCase();
      const wildernessIds = new Set(clientRows.filter((client) => name(client).includes("wilderness club")).map((client) => client.id));
      const wildernessStops = presetStopRows.filter((stop) => presetIds.has(stop.presetId) && wildernessIds.has(stop.clientId));
      const wildernessClientIds = [...new Set(wildernessStops.map((stop) => stop.clientId))];
      if (!wildernessClientIds.length) return Response.json({ error: `No Wilderness Club jobs are present in the Application ${round} presets.` }, { status: 404 });

      for (const stop of wildernessStops) await db.delete(routePresetStops).where(eq(routePresetStops.id, stop.id));
      for (const preset of presetRows) {
        const remaining = presetStopRows.filter((stop) => stop.presetId === preset.id && !wildernessIds.has(stop.clientId));
        if (!remaining.length) await db.delete(routePresets).where(eq(routePresets.id, preset.id));
        else for (let i = 0; i < remaining.length; i++) await db.update(routePresetStops).set({ stopOrder: i + 1 }).where(eq(routePresetStops.id, remaining[i].id));
      }

      const clientById = new Map(clientRows.map((client) => [client.id, client]));
      const serviceMinutes = (client: typeof clientRows[number]) => Math.max(15, client.sqft / 10000 * 22.5);
      const jobs = wildernessClientIds.map((id) => clientById.get(id)!).filter(Boolean).sort((x, y) => serviceMinutes(y) - serviceMinutes(x));
      const groups: Array<typeof jobs> = [];
      for (const job of jobs) {
        const target = groups.find((group) => group.reduce((sum, client) => sum + serviceMinutes(client), 0) + serviceMinutes(job) <= 500);
        if (target) target.push(job); else groups.push([job]);
      }
      for (let groupIndex = 0; groupIndex < groups.length; groupIndex++) {
        const presetId = uid();
        await db.insert(routePresets).values({ id: presetId, name: `Wilderness Club Route ${groupIndex + 1}`, round, year, driveMinutes: 40, breakMinutes: 60, createdBy: a.id, createdAt: stamp, updatedAt: stamp });
        for (let i = 0; i < groups[groupIndex].length; i++) await db.insert(routePresetStops).values({ id: uid(), presetId, clientId: groups[groupIndex][i].id, stopOrder: i + 1, createdAt: stamp });
      }
      await audit(a, "grouped", "route_presets", `${year}-${round}-wilderness`, `${wildernessClientIds.length} Wilderness Club jobs in ${groups.length} dedicated routes`);
      return Response.json({ ok: true, routes: groups.length, jobs: wildernessClientIds.length });
    }

    if (action === "route.preset.generate" && allowed(a, ["admin", "office"])) {
      const round = Math.max(1, Math.min(5, Math.floor(n(payload.round)))), year = Math.floor(n(payload.year)) || Number(new Date().getFullYear());
      const [clientRows, applicationRows, existingPresets] = await Promise.all([db.select().from(clients), db.select().from(applications), db.select().from(routePresets).where(and(eq(routePresets.round, round), eq(routePresets.year, year)))]);
      for (const preset of existingPresets) { await db.delete(routePresetStops).where(eq(routePresetStops.presetId, preset.id)); await db.delete(routePresets).where(eq(routePresets.id, preset.id)); }
      type ClientRow = typeof clientRows[number];
      const completed = new Set(applicationRows.filter((x) => x.round === round && x.date.startsWith(String(year))).map((x) => x.clientId));
      const clientName = (c: ClientRow) => `${c.firstName} ${c.lastName}`.trim() || c.company;
      const effectiveCity = (c: ClientRow) => c.city || (clientName(c).toLowerCase().includes("branson creek") ? "Hollister" : "Branson");
      const region = (c: ClientRow) => ["Branson", "Hollister", "Ridgedale", "Omaha", "Harrison"].includes(effectiveCity(c)) ? "Central & South" : ["Blue Eye", "Branson West", "Lampe", "Shell Knob"].includes(effectiveCity(c)) ? "West" : "North & East";
      const baseTravel: Record<string, number> = { Branson: 10, Hollister: 10, Ridgedale: 20, "Branson West": 20, Forsyth: 22, "Blue Eye": 30, Lampe: 35, Highlandville: 40, "Shell Knob": 60, "Walnut Shade": 25, Saddlebrooke: 25, Omaha: 30, Harrison: 50 };
      const mappedTravel: Record<string, number> = { "Branson|Hollister": 6, "Hollister|Ridgedale": 12, "Branson|Ridgedale": 18, "Branson West|Branson": 20, "Branson|Forsyth": 22, "Blue Eye|Branson": 28, "Branson|Lampe": 35, "Blue Eye|Lampe": 18, "Blue Eye|Branson West": 25, "Branson West|Shell Knob": 45, "Forsyth|Highlandville": 35, "Highlandville|Walnut Shade": 20, "Harrison|Omaha": 30 };
      const serviceMinutes = (c: ClientRow) => Math.max(15, c.sqft / 10000 * 22.5);
      const travelMinutes = (from: ClientRow, to: ClientRow) => {
        if (from.address && to.address && from.address === to.address) return 3;
        const fromCity = effectiveCity(from), toCity = effectiveCity(to);
        if (fromCity === toCity) return 8;
        return mappedTravel[[fromCity, toCity].sort().join("|")] ?? Math.min(60, 15 + Math.abs((baseTravel[fromCity] ?? 30) - (baseTravel[toCity] ?? 30)));
      };
      const metrics = (jobs: ClientRow[]) => {
        const service = jobs.reduce((sum, client) => sum + serviceMinutes(client), 0);
        let drive = (baseTravel[effectiveCity(jobs[0])] ?? 30) + (baseTravel[effectiveCity(jobs[jobs.length - 1])] ?? 30);
        for (let i = 1; i < jobs.length; i++) drive += travelMinutes(jobs[i - 1], jobs[i]);
        return { service, drive, total: service + drive + 60 };
      };
      const optimizeOrder = (jobs: ClientRow[]) => {
        const remaining = [...jobs], ordered: ClientRow[] = [];
        remaining.sort((x, y) => (baseTravel[effectiveCity(x)] ?? 30) - (baseTravel[effectiveCity(y)] ?? 30));
        ordered.push(remaining.shift()!);
        while (remaining.length) { let best = 0; for (let i = 1; i < remaining.length; i++) if (travelMinutes(ordered[ordered.length - 1], remaining[i]) < travelMinutes(ordered[ordered.length - 1], remaining[best])) best = i; ordered.push(remaining.splice(best, 1)[0]); }
        return ordered;
      };
      const routes: Array<{ region: string; jobs: ClientRow[]; locked?: boolean }> = [];
      const eligible = clientRows.filter((c) => c.routeEligible && !completed.has(c.id));
      const isWildernessClub = (c: ClientRow) => clientName(c).toLowerCase().includes("wilderness club");
      const wildernessPool = eligible.filter(isWildernessClub).sort((x, y) => serviceMinutes(y) - serviceMinutes(x));
      while (wildernessPool.length) {
        const jobs = [wildernessPool.shift()!];
        while (true) {
          let best = -1, bestScore = -Infinity;
          for (let i = 0; i < wildernessPool.length; i++) { const route = metrics([...jobs, wildernessPool[i]]), score = route.total; if (route.total <= 600 && score > bestScore) { best = i; bestScore = score; } }
          if (best < 0) break;
          jobs.push(wildernessPool.splice(best, 1)[0]);
        }
        routes.push({ region: "Wilderness Club", jobs: optimizeOrder(jobs), locked: true });
      }
      for (const area of ["Central & South", "West", "North & East"]) {
        const pool = eligible.filter((c) => !isWildernessClub(c) && region(c) === area).sort((x, y) => serviceMinutes(y) - serviceMinutes(x));
        while (pool.length) {
          const jobs = [pool.shift()!];
          while (true) {
            let best = -1, bestScore = -Infinity;
            for (let i = 0; i < pool.length; i++) { const route = metrics([...jobs, pool[i]]), score = route.total - travelMinutes(jobs[jobs.length - 1], pool[i]) * 2; if (route.total <= 600 && score > bestScore) { best = i; bestScore = score; } }
            if (best < 0) break;
            jobs.push(pool.splice(best, 1)[0]);
          }
          routes.push({ region: area, jobs: optimizeOrder(jobs) });
        }
      }
      for (let i = routes.length - 1; i >= 0; i--) {
        if (routes[i].locked || metrics(routes[i].jobs).total >= 360) continue;
        let destination = -1, bestTotal = Infinity, merged: ClientRow[] = [];
        for (let j = 0; j < routes.length; j++) if (j !== i && !routes[j].locked) { const candidate = optimizeOrder([...routes[j].jobs, ...routes[i].jobs]), total = metrics(candidate).total; if (total <= 600 && total < bestTotal) { destination = j; bestTotal = total; merged = candidate; } }
        if (destination >= 0) { routes[destination].jobs = merged; routes.splice(i, 1); }
      }
      // Re-optimizing stop order can add a few minutes after the initial packing pass.
      // Move the shortest suitable job to another day so no generated route exceeds 10 hours.
      for (let i = 0; i < routes.length; i++) {
        if (routes[i].locked) continue;
        while (metrics(routes[i].jobs).total > 600 && routes[i].jobs.length > 1) {
          let transfer: { job: ClientRow; destination: number; source: ClientRow[]; target: ClientRow[] } | null = null;
          for (const job of [...routes[i].jobs].sort((x, y) => serviceMinutes(x) - serviceMinutes(y))) {
            const source = optimizeOrder(routes[i].jobs.filter((candidate) => candidate.id !== job.id));
            for (let j = 0; j < routes.length; j++) if (j !== i && !routes[j].locked) {
              const target = optimizeOrder([...routes[j].jobs, job]);
              if (metrics(source).total <= 600 && metrics(target).total <= 600) { transfer = { job, destination: j, source, target }; break; }
            }
            if (transfer) break;
          }
          if (!transfer) break;
          routes[i].jobs = transfer.source;
          routes[transfer.destination].jobs = transfer.target;
        }
      }
      const labelCounts = new Map<string, number>();
      for (const route of routes) {
        const cityCounts = new Map<string, number>(); for (const job of route.jobs) cityCounts.set(effectiveCity(job), (cityCounts.get(effectiveCity(job)) || 0) + 1);
        const leading = [...cityCounts.entries()].sort((x, y) => y[1] - x[1]).slice(0, 2).map(([city]) => city), label = route.locked ? "Wilderness Club" : (leading.join("–") || route.region), sequence = (labelCounts.get(label) || 0) + 1; labelCounts.set(label, sequence);
        const estimate = metrics(route.jobs), presetId = uid();
        await db.insert(routePresets).values({ id: presetId, name: route.locked ? `${label} Route ${sequence}` : `${label} Full-Day Route ${sequence}`, round, year, driveMinutes: Math.round(estimate.drive), breakMinutes: 60, createdBy: a.id, createdAt: stamp, updatedAt: stamp });
        for (let i = 0; i < route.jobs.length; i++) await db.insert(routePresetStops).values({ id: uid(), presetId, clientId: route.jobs[i].id, stopOrder: i + 1, createdAt: stamp });
      }
      const routeCount = routes.length;
      await audit(a, "generated", "route_presets", `${year}-${round}`, `${routeCount} routes`);
      return Response.json({ ok: true, count: routeCount });
    }

    if (action === "route.preset.rename" && allowed(a, ["admin", "office"])) {
      const id = clean(payload.id), name = clean(payload.name);
      if (!id || !name) return Response.json({ error: "A route name is required." }, { status: 400 });
      await db.update(routePresets).set({ name, updatedAt: stamp }).where(eq(routePresets.id, id));
      return Response.json({ ok: true });
    }

    if (action === "route.preset.remove" && allowed(a, ["admin", "office"])) {
      const id = clean(payload.id); await db.delete(routePresetStops).where(eq(routePresetStops.presetId, id)); await db.delete(routePresets).where(eq(routePresets.id, id)); return Response.json({ ok: true });
    }

    if (action === "route.preset.clients" && allowed(a, ["admin", "office"])) {
      const presetId = clean(payload.presetId), ids = Array.isArray(payload.clientIds) ? payload.clientIds.map(clean).filter(Boolean) : [];
      const existing = await db.select().from(routePresetStops).where(eq(routePresetStops.presetId, presetId));
      let order = Math.max(0, ...existing.map((x) => x.stopOrder)) + 1;
      for (const clientId of ids) if (!existing.some((x) => x.clientId === clientId)) await db.insert(routePresetStops).values({ id: uid(), presetId, clientId, stopOrder: order++, createdAt: stamp });
      return Response.json({ ok: true });
    }

    if (action === "route.preset.stop.remove" && allowed(a, ["admin", "office"])) {
      await db.delete(routePresetStops).where(and(eq(routePresetStops.presetId, clean(payload.presetId)), eq(routePresetStops.clientId, clean(payload.clientId)))); return Response.json({ ok: true });
    }

    if (action === "route.preset.stop.transfer" && allowed(a, ["admin", "office"])) {
      const sourcePresetId = clean(payload.sourcePresetId), destinationPresetId = clean(payload.destinationPresetId), clientId = clean(payload.clientId);
      if (!sourcePresetId || !destinationPresetId || sourcePresetId === destinationPresetId) return Response.json({ error: "Choose a different destination route." }, { status: 400 });
      const destination = await db.select().from(routePresetStops).where(eq(routePresetStops.presetId, destinationPresetId));
      if (!destination.some((x) => x.clientId === clientId)) await db.insert(routePresetStops).values({ id: uid(), presetId: destinationPresetId, clientId, stopOrder: Math.max(0, ...destination.map((x) => x.stopOrder)) + 1, createdAt: stamp });
      await db.delete(routePresetStops).where(and(eq(routePresetStops.presetId, sourcePresetId), eq(routePresetStops.clientId, clientId)));
      return Response.json({ ok: true });
    }

    if (action === "route.preset.stop.move" && allowed(a, ["admin", "office"])) {
      const presetId = clean(payload.presetId), clientId = clean(payload.clientId), direction = n(payload.direction) < 0 ? -1 : 1;
      const rows = await db.select().from(routePresetStops).where(eq(routePresetStops.presetId, presetId)).orderBy(asc(routePresetStops.stopOrder));
      const index = rows.findIndex((x) => x.clientId === clientId), swapIndex = index + direction;
      if (index >= 0 && swapIndex >= 0 && swapIndex < rows.length) {
        await db.update(routePresetStops).set({ stopOrder: rows[swapIndex].stopOrder }).where(eq(routePresetStops.id, rows[index].id));
        await db.update(routePresetStops).set({ stopOrder: rows[index].stopOrder }).where(eq(routePresetStops.id, rows[swapIndex].id));
      }
      return Response.json({ ok: true });
    }

    if (action === "route.preset.schedule" && allowed(a, ["admin", "office"])) {
      const date = clean(payload.date), presetId = clean(payload.presetId), presetStops = await db.select().from(routePresetStops).where(eq(routePresetStops.presetId, presetId)).orderBy(asc(routePresetStops.stopOrder));
      const existing = await db.select().from(routeStops).where(eq(routeStops.date, date)); let order = Math.max(0, ...existing.map((x) => x.stopOrder)) + 1;
      for (const stop of presetStops) if (!existing.some((x) => x.clientId === stop.clientId)) await db.insert(routeStops).values({ id: uid(), date, clientId: stop.clientId, stopOrder: order++, completed: false, assignedTo: clean(payload.assignedTo), createdBy: a.id, createdAt: stamp });
      return Response.json({ ok: true });
    }

    if (action === "staff.save" && a.role === "admin") {
      const email = clean(payload.email).toLowerCase(), role: Role = ["admin", "office", "field"].includes(payload.role) ? payload.role : "field";
      if (!email.includes("@")) return Response.json({ error: "A valid employee email is required." }, { status: 400 });
      const existing = await db.select().from(staff).where(eq(staff.email, email)).limit(1);
      if (existing[0]) await db.update(staff).set({ name: clean(payload.name), certificationNumber: clean(payload.certificationNumber), role, active: payload.active !== false }).where(eq(staff.id, existing[0].id));
      else await db.insert(staff).values({ id: uid(), email, name: clean(payload.name), certificationNumber: clean(payload.certificationNumber), role, active: true, createdAt: stamp });
      await audit(a, existing[0] ? "updated" : "created", "staff", email, role);
      return Response.json({ ok: true });
    }

    if (action === "backup.import" && a.role === "admin") {
      const backup = payload.backup ?? {};
      if (!Array.isArray(backup.clients) || !Array.isArray(backup.products) || !Array.isArray(backup.apps)) return Response.json({ error: "That is not a valid TurfTrack backup." }, { status: 400 });
      for (const c of backup.clients) await db.insert(clients).values({ id: clean(c.id) || uid(), firstName: clean(c.firstName), lastName: clean(c.lastName), company: clean(c.company), phone: clean(c.phone), email: clean(c.email), address: clean(c.address), city: clean(c.city), state: clean(c.state), zip: clean(c.zip), sqft: n(c.sqft), routeEligible: c.routeEligible !== false, notes: clean(c.notes), createdBy: a.id, createdAt: stamp, updatedAt: stamp }).onConflictDoNothing();
      for (const p of backup.products) await db.insert(products).values({ id: clean(p.id) || uid(), name: clean(p.name), epa: clean(p.epa), type: p.type === "Granular" ? "Granular" : "Liquid", rate: n(p.rate), unit: p.type === "Granular" && ["lb", "oz", "g"].includes(clean(p.unit)) ? clean(p.unit) as "lb" | "oz" | "g" : p.type === "Granular" ? "lb" : "oz", pest: clean(p.pest), stockQuantity: n(p.stockQuantity), roundsJson: JSON.stringify(Array.isArray(p.rounds) ? p.rounds : []), notes: clean(p.notes), createdBy: a.id, createdAt: stamp, updatedAt: stamp }).onConflictDoNothing();
      for (const x of backup.apps) await db.insert(applications).values({ id: clean(x.id) || uid(), clientId: clean(x.clientId), round: n(x.round), treatmentType: x.treatmentType === "Spot" ? "Spot" : "Broadcast", date: clean(x.date), treatedSqFt: n(x.treatedSqFt), temperature: n(x.temperature), windSpeed: n(x.windSpeed), windDirection: clean(x.windDirection), startTime: clean(x.startTime), stopTime: clean(x.stopTime), applicatorName: clean(x.applicatorName), applicatorLicense: clean(x.applicatorLicense), inventoryPosted: Boolean(x.inventoryPosted), productsJson: JSON.stringify(x.products || []), notes: clean(x.notes), createdBy: a.id, createdAt: stamp, updatedAt: stamp }).onConflictDoNothing();
      const importedPresets = Array.isArray(backup.routePresets) ? backup.routePresets : [];
      const importedPresetStops = Array.isArray(backup.routePresetStops) ? backup.routePresetStops : [];
      for (const preset of importedPresets) await db.insert(routePresets).values({ id: clean(preset.id) || uid(), name: clean(preset.name) || "Imported route", round: Math.max(1, Math.min(5, Math.floor(n(preset.round)))), year: Math.floor(n(preset.year)) || Number(new Date().getFullYear()), driveMinutes: n(preset.driveMinutes), breakMinutes: n(preset.breakMinutes) || 60, createdBy: a.id, createdAt: stamp, updatedAt: stamp }).onConflictDoNothing();
      for (const stop of importedPresetStops) await db.insert(routePresetStops).values({ id: clean(stop.id) || uid(), presetId: clean(stop.presetId), clientId: clean(stop.clientId), stopOrder: Math.max(1, Math.floor(n(stop.stopOrder))), createdAt: stamp }).onConflictDoNothing();
      await audit(a, "imported", "backup", uid(), `${backup.clients.length} clients, ${backup.apps.length} applications, ${importedPresets.length} preset routes`);
      return Response.json({ ok: true });
    }

    return Response.json({ error: "That action is not permitted." }, { status: 403 });
  } catch (error) {
    return Response.json({ error: error instanceof Error ? error.message : "Unable to save changes." }, { status: 500 });
  }
}
