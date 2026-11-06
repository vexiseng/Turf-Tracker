-- Correct Teresa Williams to her June 1, 2026 rolling-contract schedule.
UPDATE "clients"
SET
  "notes" = 'Contract start date: June 1, 2026. 12-month rolling contract.',
  "updated_at" = '2026-11-06T20:05:00.000Z'
WHERE "id" = 'teresa-williams-971-crescent-dr';

-- Applications 1 and 2 predate this contract and were not performed.
DELETE FROM "applications"
WHERE "id" IN (
  'teresa-williams-2026-r1',
  'teresa-williams-2026-r2'
);

-- Application 3: pre-emergent plus broadcast Three Way and Quin-Way.
UPDATE "applications"
SET
  "treatment_type" = 'Broadcast',
  "date" = '2026-07-01',
  "treated_sqft" = 2000,
  "temperature" = 92.5,
  "wind_speed" = 6.9,
  "wind_direction" = 'S',
  "start_time" = '15:50',
  "stop_time" = '15:55',
  "products_json" = '[{"productId":"da0d41bd-9019-42ab-bc86-2720da53a6b1","name":"Lesco Stonewall 4L - Prodiamine","epa":"10404-122","rate":1.1,"unit":"oz","pest":"crabgrass","treatedSqFt":2000,"amountUsed":2.2},{"productId":"36c8636e-3ee7-4c65-8c7c-e4cc8a518d41","name":"Lesco Three Way - 2,4-D Dicamba","epa":"10404-43","rate":1.5,"unit":"oz","pest":"broadleaf","treatedSqFt":2000,"amountUsed":3},{"productId":"586a020a-8698-42b7-9c7c-2f8780b8ab05","name":"Quin-Way 1.5L","epa":"42750-224-10404","rate":1.45,"unit":"oz","pest":"crabgrass","treatedSqFt":2000,"amountUsed":2.9}]',
  "notes" = '',
  "updated_at" = '2026-11-06T20:05:00.000Z'
WHERE "id" = 'teresa-williams-2026-r3';

-- Application 4: spot herbicide on 15% of the property plus broadcast fertilizer.
UPDATE "applications"
SET
  "treatment_type" = 'Broadcast',
  "date" = '2026-08-05',
  "treated_sqft" = 2000,
  "temperature" = 84.6,
  "wind_speed" = 4.7,
  "wind_direction" = 'SW',
  "start_time" = '14:30',
  "stop_time" = '14:35',
  "products_json" = '[{"productId":"36c8636e-3ee7-4c65-8c7c-e4cc8a518d41","name":"Lesco Three Way - 2,4-D Dicamba","epa":"10404-43","rate":1.5,"unit":"oz","pest":"broadleaf","treatedSqFt":300,"amountUsed":0.45},{"productId":"586a020a-8698-42b7-9c7c-2f8780b8ab05","name":"Quin-Way 1.5L","epa":"42750-224-10404","rate":1.45,"unit":"oz","pest":"crabgrass","treatedSqFt":300,"amountUsed":0.435},{"productId":"40c568a1-9c11-411d-98b0-620bad128fb1","name":"Lesco 15-3-7 Fertilizer","epa":"NA","rate":6.66,"unit":"lb","pest":"NA","treatedSqFt":2000,"amountUsed":13.32}]',
  "notes" = 'Spot herbicide treatment plus broadcast fertilizer.',
  "updated_at" = '2026-11-06T20:05:00.000Z'
WHERE "id" = 'teresa-williams-2026-r4';

-- Application 5: today's broadcast 28-0-3 fertilizer application.
INSERT OR REPLACE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) VALUES (
  'teresa-williams-2026-r5',
  'teresa-williams-971-crescent-dr',
  5,
  'Broadcast',
  '2026-11-06',
  2000,
  54,
  7,
  'N',
  '14:00',
  '14:05',
  'Christopher Taylor',
  'C25864',
  0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":2000,"amountUsed":7.14}]',
  '',
  'migration-2026-11-06',
  '2026-11-06T20:05:00.000Z',
  '2026-11-06T20:05:00.000Z'
);

-- Application 5 is now complete, so remove Teresa from the unfinished preset.
DELETE FROM "route_preset_stops"
WHERE "id" = 'teresa-williams-2026-r5-route-stop';
