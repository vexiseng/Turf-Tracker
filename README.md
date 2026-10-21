# TurfTrack

TurfTrack is Opie's Landscaping's private turf-application record system. It runs as a Cloudflare Worker, stores records in Cloudflare D1, and uses Cloudflare Access for employee sign-in.

## Privacy

This repository contains application source and an empty database schema only. Customer names, addresses, phone numbers, application records, staff accounts, inventory values, and route data are intentionally excluded.

## Cloudflare setup

1. In **Cloudflare > Storage & databases > D1**, create a database named `turftrack-records`.
2. Copy its database ID into `wrangler.jsonc`, replacing the all-zero placeholder.
3. In the D1 console, apply `drizzle/0000_turftrack_schema.sql` once.
4. In **Workers & Pages**, create a Worker from this GitHub repository. Keep the Worker name `turftrack-records` so it matches `wrangler.jsonc`.
5. Use `npm run build` as the build command and `npx wrangler deploy` as the deploy command.
6. Confirm the Worker has a D1 binding named `DB` pointing to `turftrack-records`.
7. Open the Worker's **Access** tab, choose **Protect this Worker behind Access**, select **All traffic**, and allow only the office and field employee email addresses.
8. The first allowed employee who opens an empty TurfTrack database becomes the administrator. Sign in as Christopher first.
9. Use TurfTrack's admin backup importer to load the customer and application backup supplied separately from this repository.

## Local development

Requires Node.js 22.13 or newer.

```bash
npm install
npx wrangler d1 migrations apply turftrack-records --local
npm run dev
```

Production database migrations can be applied after Cloudflare authentication with:

```bash
npx wrangler d1 migrations apply turftrack-records --remote
```

## Commands

- `npm run dev` — local development
- `npm run build` — production build
- `npm run deploy` — build and deploy with Wrangler
- `npm run start` — run the built Worker locally
- `npm run lint` — lint the source
- `npm run db:generate` — generate a new Drizzle migration after schema changes
