import { index, integer, real, sqliteTable, text } from "drizzle-orm/sqlite-core";

export const staff = sqliteTable("staff", {
  id: text("id").primaryKey(),
  email: text("email").notNull().unique(),
  name: text("name").notNull().default(""),
  certificationNumber: text("certification_number").notNull().default(""),
  role: text("role", { enum: ["admin", "office", "field"] }).notNull().default("field"),
  active: integer("active", { mode: "boolean" }).notNull().default(true),
  createdAt: text("created_at").notNull(),
});

export const clients = sqliteTable("clients", {
  id: text("id").primaryKey(),
  firstName: text("first_name").notNull().default(""),
  lastName: text("last_name").notNull().default(""),
  company: text("company").notNull().default(""),
  phone: text("phone").notNull().default(""),
  email: text("email").notNull().default(""),
  address: text("address").notNull().default(""),
  city: text("city").notNull().default(""),
  state: text("state").notNull().default(""),
  zip: text("zip").notNull().default(""),
  sqft: real("sqft").notNull().default(0),
  routeEligible: integer("route_eligible", { mode: "boolean" }).notNull().default(true),
  notes: text("notes").notNull().default(""),
  createdBy: text("created_by").notNull(),
  createdAt: text("created_at").notNull(),
  updatedAt: text("updated_at").notNull(),
}, (t) => [index("idx_clients_name").on(t.lastName, t.firstName), index("idx_clients_city_zip").on(t.city, t.zip)]);

export const products = sqliteTable("products", {
  id: text("id").primaryKey(),
  name: text("name").notNull(),
  epa: text("epa").notNull().default(""),
  type: text("type", { enum: ["Liquid", "Granular"] }).notNull(),
  rate: real("rate").notNull(),
  unit: text("unit", { enum: ["oz", "lb", "g"] }).notNull(),
  pest: text("pest").notNull().default(""),
  stockQuantity: real("stock_quantity").notNull().default(0),
  roundsJson: text("rounds_json").notNull().default("[]"),
  notes: text("notes").notNull().default(""),
  createdBy: text("created_by").notNull(),
  createdAt: text("created_at").notNull(),
  updatedAt: text("updated_at").notNull(),
}, (t) => [index("idx_products_name").on(t.name)]);

export const applications = sqliteTable("applications", {
  id: text("id").primaryKey(),
  clientId: text("client_id").notNull(),
  round: integer("round").notNull(),
  treatmentType: text("treatment_type", { enum: ["Broadcast", "Spot"] }).notNull().default("Broadcast"),
  date: text("date").notNull(),
  treatedSqFt: real("treated_sqft").notNull(),
  temperature: real("temperature").notNull(),
  windSpeed: real("wind_speed").notNull(),
  windDirection: text("wind_direction").notNull(),
  startTime: text("start_time").notNull(),
  stopTime: text("stop_time").notNull(),
  applicatorName: text("applicator_name").notNull().default(""),
  applicatorLicense: text("applicator_license").notNull().default(""),
  inventoryPosted: integer("inventory_posted", { mode: "boolean" }).notNull().default(false),
  productsJson: text("products_json").notNull().default("[]"),
  notes: text("notes").notNull().default(""),
  createdBy: text("created_by").notNull(),
  createdAt: text("created_at").notNull(),
  updatedAt: text("updated_at").notNull(),
}, (t) => [index("idx_applications_client_date").on(t.clientId, t.date), index("idx_applications_date").on(t.date)]);

export const routeStops = sqliteTable("route_stops", {
  id: text("id").primaryKey(),
  date: text("date").notNull(),
  clientId: text("client_id").notNull(),
  stopOrder: integer("stop_order").notNull(),
  completed: integer("completed", { mode: "boolean" }).notNull().default(false),
  assignedTo: text("assigned_to").notNull().default(""),
  createdBy: text("created_by").notNull(),
  createdAt: text("created_at").notNull(),
}, (t) => [index("idx_route_stops_date_order").on(t.date, t.stopOrder)]);

export const routePresets = sqliteTable("route_presets", {
  id: text("id").primaryKey(),
  name: text("name").notNull(),
  round: integer("round").notNull(),
  year: integer("year").notNull(),
  driveMinutes: real("drive_minutes").notNull().default(0),
  breakMinutes: real("break_minutes").notNull().default(60),
  createdBy: text("created_by").notNull(),
  createdAt: text("created_at").notNull(),
  updatedAt: text("updated_at").notNull(),
}, (t) => [index("idx_route_presets_round_year").on(t.round, t.year)]);

export const routePresetStops = sqliteTable("route_preset_stops", {
  id: text("id").primaryKey(),
  presetId: text("preset_id").notNull(),
  clientId: text("client_id").notNull(),
  stopOrder: integer("stop_order").notNull(),
  createdAt: text("created_at").notNull(),
}, (t) => [index("idx_route_preset_stops_preset_order").on(t.presetId, t.stopOrder)]);

export const auditLog = sqliteTable("audit_log", {
  id: text("id").primaryKey(),
  actorEmail: text("actor_email").notNull(),
  action: text("action").notNull(),
  entityType: text("entity_type").notNull(),
  entityId: text("entity_id").notNull(),
  details: text("details").notNull().default(""),
  createdAt: text("created_at").notNull(),
}, (t) => [index("idx_audit_created_at").on(t.createdAt)]);
