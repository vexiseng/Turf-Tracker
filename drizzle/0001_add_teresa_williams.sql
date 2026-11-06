-- Add Teresa Williams and her confirmed 2026 Applications 1-4.
INSERT OR IGNORE INTO "clients" (
  "id", "first_name", "last_name", "company", "phone", "email",
  "address", "city", "state", "zip", "sqft", "route_eligible",
  "notes", "created_by", "created_at", "updated_at"
) VALUES (
  'teresa-williams-971-crescent-dr', 'Teresa', 'Williams', '', '', '',
  '971 Crescent Dr', 'Hollister', 'MO', '65672', 2000, 1,
  '', 'migration-2026-11-06', '2026-11-06T18:00:00.000Z', '2026-11-06T18:00:00.000Z'
);

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) VALUES
(
  'teresa-williams-2026-r1', 'teresa-williams-971-crescent-dr', 1, 'Broadcast',
  '2026-03-13', 2000, 69.5, 4.2, 'NW', '14:30', '14:35',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"da0d41bd-9019-42ab-bc86-2720da53a6b1","name":"Lesco Stonewall 4L - Prodiamine","epa":"10404-122","rate":1.1,"unit":"oz","pest":"crabgrass","amountUsed":2.2}]',
  '', 'migration-2026-11-06', '2026-11-06T18:00:00.000Z', '2026-11-06T18:00:00.000Z'
),
(
  'teresa-williams-2026-r2', 'teresa-williams-971-crescent-dr', 2, 'Broadcast',
  '2026-05-08', 2000, 76.9, 7.1, 'SW', '14:30', '14:35',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"36c8636e-3ee7-4c65-8c7c-e4cc8a518d41","name":"Lesco Three Way - 2,4-D Dicamba","epa":"10404-43","rate":1.5,"unit":"oz","pest":"broadleaf","amountUsed":3}]',
  '', 'migration-2026-11-06', '2026-11-06T18:00:00.000Z', '2026-11-06T18:00:00.000Z'
),
(
  'teresa-williams-2026-r3', 'teresa-williams-971-crescent-dr', 3, 'Broadcast',
  '2026-07-03', 2000, 89.8, 3.0, 'SE', '13:52', '13:57',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"40c568a1-9c11-411d-98b0-620bad128fb1","name":"Lesco 15-3-7 Fertilizer","epa":"NA","rate":6.66,"unit":"lb","pest":"NA","amountUsed":13.32}]',
  '', 'migration-2026-11-06', '2026-11-06T18:00:00.000Z', '2026-11-06T18:00:00.000Z'
),
(
  'teresa-williams-2026-r4', 'teresa-williams-971-crescent-dr', 4, 'Spot',
  '2026-08-28', 300, 87.6, 3.7, 'NE', '13:52', '13:57',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"36c8636e-3ee7-4c65-8c7c-e4cc8a518d41","name":"Lesco Three Way - 2,4-D Dicamba","epa":"10404-43","rate":1.5,"unit":"oz","pest":"broadleaf","amountUsed":0.45},{"productId":"586a020a-8698-42b7-9c7c-2f8780b8ab05","name":"Quin-Way 1.5L","epa":"42750-224-10404","rate":1.45,"unit":"oz","pest":"crabgrass","amountUsed":0.435}]',
  '', 'migration-2026-11-06', '2026-11-06T18:00:00.000Z', '2026-11-06T18:00:00.000Z'
);

-- Keep Teresa beside the other Crescent Drive properties in the App 5 preset.
UPDATE "route_preset_stops"
SET "stop_order" = "stop_order" + 1
WHERE "preset_id" = 'seed-adjusted-2026-r5-009'
  AND "stop_order" >= 7
  AND NOT EXISTS (
    SELECT 1 FROM "route_preset_stops"
    WHERE "id" = 'teresa-williams-2026-r5-route-stop'
  );

INSERT OR IGNORE INTO "route_preset_stops" (
  "id", "preset_id", "client_id", "stop_order", "created_at"
) SELECT
  'teresa-williams-2026-r5-route-stop',
  'seed-adjusted-2026-r5-009',
  'teresa-williams-971-crescent-dr',
  7,
  '2026-11-06T18:00:00.000Z'
WHERE EXISTS (
  SELECT 1 FROM "route_presets"
  WHERE "id" = 'seed-adjusted-2026-r5-009'
);
