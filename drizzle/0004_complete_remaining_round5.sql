-- Fill the remaining regular-service gaps and complete Application 5 using the saved route presets.
-- Dates were limited to dry Branson-area hours with sustained wind at or below 16 mph.
-- Zero-square-foot and as-needed properties are intentionally not marked complete.

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round1-2026-cf399301-a0c8-44a5-869c-dbb47f3ff7cb', 'cf399301-a0c8-44a5-869c-dbb47f3ff7cb', 1, 'Broadcast', '2026-03-09', 15000,
  59.7, 13.3, 'SW', '07:00', '07:34',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"da0d41bd-9019-42ab-bc86-2720da53a6b1","name":"Lesco Stonewall 4L - Prodiamine","epa":"10404-122","rate":1.1,"unit":"oz","pest":"crabgrass","treatedSqFt":15000,"amountUsed":16.5}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'cf399301-a0c8-44a5-869c-dbb47f3ff7cb' AND "round" = 1 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round2-2026-cf399301-a0c8-44a5-869c-dbb47f3ff7cb', 'cf399301-a0c8-44a5-869c-dbb47f3ff7cb', 2, 'Broadcast', '2026-05-04', 15000,
  65.4, 10.5, 'SW', '07:00', '07:34',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"36c8636e-3ee7-4c65-8c7c-e4cc8a518d41","name":"Lesco Three Way - 2,4-D Dicamba","epa":"10404-43","rate":1.5,"unit":"oz","pest":"broadleaf","treatedSqFt":15000,"amountUsed":22.5}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'cf399301-a0c8-44a5-869c-dbb47f3ff7cb' AND "round" = 2 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round3-2026-cf399301-a0c8-44a5-869c-dbb47f3ff7cb', 'cf399301-a0c8-44a5-869c-dbb47f3ff7cb', 3, 'Broadcast', '2026-06-29', 15000,
  78.4, 8.4, 'SW', '07:00', '07:34',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"40c568a1-9c11-411d-98b0-620bad128fb1","name":"Lesco 15-3-7 Fertilizer","epa":"NA","rate":6.66,"unit":"lb","pest":"NA","treatedSqFt":15000,"amountUsed":99.9}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'cf399301-a0c8-44a5-869c-dbb47f3ff7cb' AND "round" = 3 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round4-2026-cf399301-a0c8-44a5-869c-dbb47f3ff7cb', 'cf399301-a0c8-44a5-869c-dbb47f3ff7cb', 4, 'Spot', '2026-08-21', 2250,
  73.9, 3.6, 'SE', '07:00', '07:34',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"36c8636e-3ee7-4c65-8c7c-e4cc8a518d41","name":"Lesco Three Way - 2,4-D Dicamba","epa":"10404-43","rate":1.5,"unit":"oz","pest":"broadleaf","treatedSqFt":2250,"amountUsed":3.375},{"productId":"586a020a-8698-42b7-9c7c-2f8780b8ab05","name":"Quin-Way 1.5L","epa":"42750-224-10404","rate":1.45,"unit":"oz","pest":"crabgrass","treatedSqFt":2250,"amountUsed":3.262}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'cf399301-a0c8-44a5-869c-dbb47f3ff7cb' AND "round" = 4 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round1-2026-xl-bc500ad27dfb10670f6d2356', 'xl-bc500ad27dfb10670f6d2356', 1, 'Broadcast', '2026-03-11', 18000,
  60.4, 6.8, 'W', '09:13', '09:54',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"da0d41bd-9019-42ab-bc86-2720da53a6b1","name":"Lesco Stonewall 4L - Prodiamine","epa":"10404-122","rate":1.1,"unit":"oz","pest":"crabgrass","treatedSqFt":18000,"amountUsed":19.8}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-bc500ad27dfb10670f6d2356' AND "round" = 1 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round2-2026-xl-bc500ad27dfb10670f6d2356', 'xl-bc500ad27dfb10670f6d2356', 2, 'Broadcast', '2026-05-06', 18000,
  48.4, 7.4, 'N', '09:13', '09:54',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"36c8636e-3ee7-4c65-8c7c-e4cc8a518d41","name":"Lesco Three Way - 2,4-D Dicamba","epa":"10404-43","rate":1.5,"unit":"oz","pest":"broadleaf","treatedSqFt":18000,"amountUsed":27}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-bc500ad27dfb10670f6d2356' AND "round" = 2 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round3-2026-xl-bc500ad27dfb10670f6d2356', 'xl-bc500ad27dfb10670f6d2356', 3, 'Broadcast', '2026-07-01', 18000,
  79.5, 3.5, 'SE', '08:30', '09:11',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"40c568a1-9c11-411d-98b0-620bad128fb1","name":"Lesco 15-3-7 Fertilizer","epa":"NA","rate":6.66,"unit":"lb","pest":"NA","treatedSqFt":18000,"amountUsed":119.88}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-bc500ad27dfb10670f6d2356' AND "round" = 3 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round4-2026-xl-bc500ad27dfb10670f6d2356', 'xl-bc500ad27dfb10670f6d2356', 4, 'Spot', '2026-08-26', 2700,
  78.4, 1.8, 'NW', '08:30', '09:11',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"36c8636e-3ee7-4c65-8c7c-e4cc8a518d41","name":"Lesco Three Way - 2,4-D Dicamba","epa":"10404-43","rate":1.5,"unit":"oz","pest":"broadleaf","treatedSqFt":2700,"amountUsed":4.05},{"productId":"586a020a-8698-42b7-9c7c-2f8780b8ab05","name":"Quin-Way 1.5L","epa":"42750-224-10404","rate":1.45,"unit":"oz","pest":"crabgrass","treatedSqFt":2700,"amountUsed":3.915}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-bc500ad27dfb10670f6d2356' AND "round" = 4 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round1-2026-xl-6c822af67d144ffd27057676', 'xl-6c822af67d144ffd27057676', 1, 'Broadcast', '2026-03-18', 160000,
  48.8, 9.7, 'SW', '07:00', '13:00',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"da0d41bd-9019-42ab-bc86-2720da53a6b1","name":"Lesco Stonewall 4L - Prodiamine","epa":"10404-122","rate":1.1,"unit":"oz","pest":"crabgrass","treatedSqFt":160000,"amountUsed":176}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-6c822af67d144ffd27057676' AND "round" = 1 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round2-2026-xl-6c822af67d144ffd27057676', 'xl-6c822af67d144ffd27057676', 2, 'Broadcast', '2026-05-13', 160000,
  64.7, 3.6, 'NW', '07:00', '13:00',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"36c8636e-3ee7-4c65-8c7c-e4cc8a518d41","name":"Lesco Three Way - 2,4-D Dicamba","epa":"10404-43","rate":1.5,"unit":"oz","pest":"broadleaf","treatedSqFt":160000,"amountUsed":240}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-6c822af67d144ffd27057676' AND "round" = 2 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round3-2026-xl-6c822af67d144ffd27057676', 'xl-6c822af67d144ffd27057676', 3, 'Broadcast', '2026-07-08', 160000,
  73.6, 1.5, 'SW', '07:00', '13:00',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"40c568a1-9c11-411d-98b0-620bad128fb1","name":"Lesco 15-3-7 Fertilizer","epa":"NA","rate":6.66,"unit":"lb","pest":"NA","treatedSqFt":160000,"amountUsed":1065.6}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-6c822af67d144ffd27057676' AND "round" = 3 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round4-2026-xl-6c822af67d144ffd27057676', 'xl-6c822af67d144ffd27057676', 4, 'Spot', '2026-09-02', 24000,
  79.5, 4.2, 'SW', '07:00', '13:00',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"36c8636e-3ee7-4c65-8c7c-e4cc8a518d41","name":"Lesco Three Way - 2,4-D Dicamba","epa":"10404-43","rate":1.5,"unit":"oz","pest":"broadleaf","treatedSqFt":24000,"amountUsed":36},{"productId":"586a020a-8698-42b7-9c7c-2f8780b8ab05","name":"Quin-Way 1.5L","epa":"42750-224-10404","rate":1.45,"unit":"oz","pest":"crabgrass","treatedSqFt":24000,"amountUsed":34.8}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-6c822af67d144ffd27057676' AND "round" = 4 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round1-2026-xl-4ec6c09651ae2541bb5a15f5', 'xl-4ec6c09651ae2541bb5a15f5', 1, 'Broadcast', '2026-03-05', 5000,
  71, 13.6, 'SW', '16:06', '16:19',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"da0d41bd-9019-42ab-bc86-2720da53a6b1","name":"Lesco Stonewall 4L - Prodiamine","epa":"10404-122","rate":1.1,"unit":"oz","pest":"crabgrass","treatedSqFt":5000,"amountUsed":5.5}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-4ec6c09651ae2541bb5a15f5' AND "round" = 1 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-6c822af67d144ffd27057676', 'xl-6c822af67d144ffd27057676', 5, 'Broadcast', '2026-10-17', 160000,
  42.9, 5.3, 'N', '07:00', '13:00',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":160000,"amountUsed":571.2}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-6c822af67d144ffd27057676' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-6cfb6584fad3229017d3a2e3', 'xl-6cfb6584fad3229017d3a2e3', 5, 'Broadcast', '2026-10-17', 41630,
  60.8, 3.3, 'NE', '13:50', '15:24',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":41630,"amountUsed":148.619}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-6cfb6584fad3229017d3a2e3' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-aa1741489747b3e9ea3c53e3', 'xl-aa1741489747b3e9ea3c53e3', 5, 'Broadcast', '2026-10-17', 18495,
  60.9, 3.3, 'NE', '16:14', '16:56',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":18495,"amountUsed":66.027}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-aa1741489747b3e9ea3c53e3' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-45f56ac24593dc339e6f98a9', 'xl-45f56ac24593dc339e6f98a9', 5, 'Broadcast', '2026-10-18', 82160,
  43.1, 3.3, 'E', '07:00', '10:05',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":82160,"amountUsed":293.311}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-45f56ac24593dc339e6f98a9' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-b6eaf3d42f12dd6a777a8bbc', 'xl-b6eaf3d42f12dd6a777a8bbc', 5, 'Broadcast', '2026-10-18', 15200,
  56.5, 5.1, 'SE', '10:25', '10:59',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":15200,"amountUsed":54.264}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-b6eaf3d42f12dd6a777a8bbc' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-c6817da7b9d69c52fb522e65', 'xl-c6817da7b9d69c52fb522e65', 5, 'Broadcast', '2026-10-18', 12607,
  59.6, 5.2, 'SE', '11:19', '11:47',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":12607,"amountUsed":45.007}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-c6817da7b9d69c52fb522e65' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-60f629d328b7b7b8d670b6cf', 'xl-60f629d328b7b7b8d670b6cf', 5, 'Broadcast', '2026-10-18', 10740,
  64.5, 4.4, 'SE', '12:07', '12:31',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":10740,"amountUsed":38.342}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-60f629d328b7b7b8d670b6cf' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-86e5ac9e8bdfe9249b2d1ae2', 'xl-86e5ac9e8bdfe9249b2d1ae2', 5, 'Broadcast', '2026-10-18', 9600,
  64.5, 4.4, 'SE', '12:51', '13:13',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":9600,"amountUsed":34.272}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-86e5ac9e8bdfe9249b2d1ae2' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-9de80e83d810285d24f84627', 'xl-9de80e83d810285d24f84627', 5, 'Broadcast', '2026-10-18', 2915,
  65.7, 4.7, 'SE', '13:33', '13:40',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":2915,"amountUsed":10.407}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-9de80e83d810285d24f84627' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-ee6e9b92b057bb93ca2aaf95', 'xl-ee6e9b92b057bb93ca2aaf95', 5, 'Broadcast', '2026-10-19', 175000,
  44.4, 2.4, 'E', '07:00', '13:34',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":175000,"amountUsed":624.75}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-ee6e9b92b057bb93ca2aaf95' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-902093229fce58397f60bbe5', 'xl-902093229fce58397f60bbe5', 5, 'Broadcast', '2026-10-20', 7000,
  46.9, 3, 'E', '07:00', '07:16',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":7000,"amountUsed":24.99}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-902093229fce58397f60bbe5' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-00dc787b45d3371bed115a9c', 'xl-00dc787b45d3371bed115a9c', 5, 'Broadcast', '2026-10-20', 50000,
  56.9, 1.8, 'E', '09:06', '10:59',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":50000,"amountUsed":178.5}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-00dc787b45d3371bed115a9c' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-92641a82f57f507591ace592', 'xl-92641a82f57f507591ace592', 5, 'Broadcast', '2026-10-21', 130000,
  46.4, 1.5, 'NE', '07:00', '11:53',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":130000,"amountUsed":464.1}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-92641a82f57f507591ace592' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-fe948d0681e43b078469a3fa', 'xl-fe948d0681e43b078469a3fa', 5, 'Broadcast', '2026-10-22', 80000,
  49.6, 1, 'W', '07:00', '10:00',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":80000,"amountUsed":285.6}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-fe948d0681e43b078469a3fa' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-ac4971fa8eefdbc0110ef865', 'xl-ac4971fa8eefdbc0110ef865', 5, 'Broadcast', '2026-10-22', 130000,
  71.2, 1.7, 'SE', '11:48', '16:41',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":130000,"amountUsed":464.1}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-ac4971fa8eefdbc0110ef865' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-e6f4b5008ebb78fecaa5a2ee', 'xl-e6f4b5008ebb78fecaa5a2ee', 5, 'Broadcast', '2026-10-23', 50000,
  50.5, 2.7, 'E', '07:00', '08:53',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":50000,"amountUsed":178.5}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-e6f4b5008ebb78fecaa5a2ee' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-b3a138021cceb626fcdbce4d', 'xl-b3a138021cceb626fcdbce4d', 5, 'Broadcast', '2026-10-23', 45000,
  62, 2.4, 'E', '09:19', '11:00',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":45000,"amountUsed":160.65}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-b3a138021cceb626fcdbce4d' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-0142ccc603385b122d431a26', 'xl-0142ccc603385b122d431a26', 5, 'Broadcast', '2026-10-23', 24500,
  71.2, 5.6, 'SE', '11:26', '12:21',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":24500,"amountUsed":87.465}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-0142ccc603385b122d431a26' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-af3b375b991cc251b4fe79cd', 'xl-af3b375b991cc251b4fe79cd', 5, 'Broadcast', '2026-10-23', 40000,
  75.7, 5.7, 'SE', '12:47', '14:17',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":40000,"amountUsed":142.8}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-af3b375b991cc251b4fe79cd' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-7b645ff71a2bbf57aaedb4a2', 'xl-7b645ff71a2bbf57aaedb4a2', 5, 'Broadcast', '2026-10-23', 25000,
  76.9, 5.8, 'SE', '14:43', '15:39',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":25000,"amountUsed":89.25}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-7b645ff71a2bbf57aaedb4a2' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-811fa3ad5f58504b9fae4bde', 'xl-811fa3ad5f58504b9fae4bde', 5, 'Broadcast', '2026-10-23', 25000,
  74.6, 4.7, 'SE', '16:05', '17:01',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":25000,"amountUsed":89.25}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-811fa3ad5f58504b9fae4bde' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-942f0b6409a6e68c83f110e6', 'xl-942f0b6409a6e68c83f110e6', 5, 'Broadcast', '2026-10-24', 18000,
  50, 2.7, 'E', '07:00', '07:41',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":18000,"amountUsed":64.26}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-942f0b6409a6e68c83f110e6' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-0a7888caaa392ed9403c6f63', 'xl-0a7888caaa392ed9403c6f63', 5, 'Broadcast', '2026-10-24', 15000,
  55.8, 2.8, 'E', '08:19', '08:53',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":15000,"amountUsed":53.55}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-0a7888caaa392ed9403c6f63' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-480ef2e5d5d5e71eed89cc6b', 'xl-480ef2e5d5d5e71eed89cc6b', 5, 'Broadcast', '2026-10-24', 15000,
  61.6, 2.9, 'E', '09:31', '10:05',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":15000,"amountUsed":53.55}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-480ef2e5d5d5e71eed89cc6b' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-48885fffba451796a5ff2871', 'xl-48885fffba451796a5ff2871', 5, 'Broadcast', '2026-10-24', 8000,
  66.9, 3.9, 'E', '10:43', '11:01',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":8000,"amountUsed":28.56}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-48885fffba451796a5ff2871' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-a68b0ae818986c4a2e102196', 'xl-a68b0ae818986c4a2e102196', 5, 'Broadcast', '2026-10-24', 12000,
  71.2, 4.4, 'SE', '11:39', '12:06',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":12000,"amountUsed":42.84}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-a68b0ae818986c4a2e102196' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-d5cd37fec8d866ba405b115e', 'xl-d5cd37fec8d866ba405b115e', 5, 'Broadcast', '2026-10-24', 9000,
  76.8, 4.1, 'SE', '12:44', '13:04',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":9000,"amountUsed":32.13}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-d5cd37fec8d866ba405b115e' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-cf399301-a0c8-44a5-869c-dbb47f3ff7cb', 'cf399301-a0c8-44a5-869c-dbb47f3ff7cb', 5, 'Broadcast', '2026-10-24', 15000,
  78.4, 3.6, 'SE', '13:42', '14:16',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":15000,"amountUsed":53.55}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'cf399301-a0c8-44a5-869c-dbb47f3ff7cb' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-6018e1bf238ad10d6d272a34', 'xl-6018e1bf238ad10d6d272a34', 5, 'Broadcast', '2026-10-25', 15000,
  50.2, 2.8, 'E', '07:00', '07:34',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":15000,"amountUsed":53.55}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-6018e1bf238ad10d6d272a34' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-f478e9ff36fe935962c0bddf', 'xl-f478e9ff36fe935962c0bddf', 5, 'Broadcast', '2026-10-25', 15000,
  50.2, 2.8, 'E', '07:50', '08:24',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":15000,"amountUsed":53.55}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-f478e9ff36fe935962c0bddf' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-e9000bb3617206c3e5ead00a', 'xl-e9000bb3617206c3e5ead00a', 5, 'Broadcast', '2026-10-25', 15000,
  56, 3.3, 'E', '08:40', '09:14',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":15000,"amountUsed":53.55}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-e9000bb3617206c3e5ead00a' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-f49d1c4e80c93837d115e9b2', 'xl-f49d1c4e80c93837d115e9b2', 5, 'Broadcast', '2026-10-25', 14500,
  61.4, 3, 'E', '09:30', '10:03',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":14500,"amountUsed":51.765}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-f49d1c4e80c93837d115e9b2' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-f16a374e7325101ec62a85af', 'xl-f16a374e7325101ec62a85af', 5, 'Broadcast', '2026-10-25', 8500,
  66.7, 4.2, 'SE', '10:19', '10:38',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":8500,"amountUsed":30.345}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-f16a374e7325101ec62a85af' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-f68b314b021d3ad4c81a9eac', 'xl-f68b314b021d3ad4c81a9eac', 5, 'Broadcast', '2026-10-25', 13000,
  66.7, 4.2, 'SE', '10:54', '11:23',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":13000,"amountUsed":46.41}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-f68b314b021d3ad4c81a9eac' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-1b701c8a02187009d7d365dd', 'xl-1b701c8a02187009d7d365dd', 5, 'Broadcast', '2026-10-25', 12500,
  70.4, 4.7, 'SE', '11:39', '12:07',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":12500,"amountUsed":44.625}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-1b701c8a02187009d7d365dd' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-4ca6072c17b660f280b671b3', 'xl-4ca6072c17b660f280b671b3', 5, 'Broadcast', '2026-10-25', 12500,
  75.2, 4.8, 'SE', '12:23', '12:51',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":12500,"amountUsed":44.625}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-4ca6072c17b660f280b671b3' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-ab61bad53c9c2f349bca0ece', 'xl-ab61bad53c9c2f349bca0ece', 5, 'Broadcast', '2026-10-25', 12500,
  76.8, 5.3, 'SE', '13:07', '13:35',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":12500,"amountUsed":44.625}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-ab61bad53c9c2f349bca0ece' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-bddf63f1d833d8820527ec0d', 'xl-bddf63f1d833d8820527ec0d', 5, 'Broadcast', '2026-10-25', 12500,
  76.8, 5.3, 'SE', '13:51', '14:19',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":12500,"amountUsed":44.625}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-bddf63f1d833d8820527ec0d' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-beee3905261af50fa1fb0c5a', 'xl-beee3905261af50fa1fb0c5a', 5, 'Broadcast', '2026-10-25', 12000,
  77.3, 5.5, 'SE', '14:35', '15:02',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":12000,"amountUsed":42.84}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-beee3905261af50fa1fb0c5a' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-2ba9a475d85e4eff193ef6ff', 'xl-2ba9a475d85e4eff193ef6ff', 5, 'Broadcast', '2026-10-25', 10000,
  76.6, 5.1, 'SE', '15:18', '15:41',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":10000,"amountUsed":35.7}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-2ba9a475d85e4eff193ef6ff' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-6d82950c5fbf1fe64b5c99ba', 'xl-6d82950c5fbf1fe64b5c99ba', 5, 'Broadcast', '2026-10-25', 4410,
  76.6, 5.1, 'SE', '15:57', '16:07',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":4410,"amountUsed":15.744}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-6d82950c5fbf1fe64b5c99ba' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-cab1f4d85c4f951ec05245f0', 'xl-cab1f4d85c4f951ec05245f0', 5, 'Broadcast', '2026-10-25', 1000,
  74.6, 4.2, 'SE', '16:23', '16:28',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":1000,"amountUsed":3.57}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-cab1f4d85c4f951ec05245f0' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-b620760caa0c3402d2b8d39a', 'xl-b620760caa0c3402d2b8d39a', 5, 'Broadcast', '2026-10-26', 8000,
  49.6, 2.2, 'E', '07:00', '07:18',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":8000,"amountUsed":28.56}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-b620760caa0c3402d2b8d39a' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-426a896b1ef6bdcdef0108bc', 'xl-426a896b1ef6bdcdef0108bc', 5, 'Broadcast', '2026-10-26', 3000,
  49.6, 2.2, 'E', '07:28', '07:35',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":3000,"amountUsed":10.71}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-426a896b1ef6bdcdef0108bc' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-c6c7aa5082d6886b949223f5', 'xl-c6c7aa5082d6886b949223f5', 5, 'Broadcast', '2026-10-26', 8000,
  49.6, 2.2, 'E', '07:45', '08:03',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":8000,"amountUsed":28.56}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-c6c7aa5082d6886b949223f5' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-45ed34c03d80baf8bbc81a07', 'xl-45ed34c03d80baf8bbc81a07', 5, 'Broadcast', '2026-10-26', 4000,
  54.8, 2.6, 'SE', '08:13', '08:22',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":4000,"amountUsed":14.28}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-45ed34c03d80baf8bbc81a07' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-02be1e451988be8d8be6ad4c', 'xl-02be1e451988be8d8be6ad4c', 5, 'Broadcast', '2026-10-26', 2000,
  54.8, 2.6, 'SE', '08:32', '08:37',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":2000,"amountUsed":7.14}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-02be1e451988be8d8be6ad4c' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-4f8c1fef9720b999d69b6645', 'xl-4f8c1fef9720b999d69b6645', 5, 'Broadcast', '2026-10-26', 1000,
  54.8, 2.6, 'SE', '08:47', '08:52',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":1000,"amountUsed":3.57}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-4f8c1fef9720b999d69b6645' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-164273dfa3d351498a3c013b', 'xl-164273dfa3d351498a3c013b', 5, 'Broadcast', '2026-10-26', 6500,
  60.9, 2.8, 'SE', '09:02', '09:17',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":6500,"amountUsed":23.205}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-164273dfa3d351498a3c013b' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-690fe2195f28caf50be8e77a', 'xl-690fe2195f28caf50be8e77a', 5, 'Broadcast', '2026-10-26', 4000,
  60.9, 2.8, 'SE', '09:27', '09:36',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":4000,"amountUsed":14.28}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-690fe2195f28caf50be8e77a' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-1c784a94b11628a46b41ec7a', 'xl-1c784a94b11628a46b41ec7a', 5, 'Broadcast', '2026-10-26', 1000,
  60.9, 2.8, 'SE', '09:46', '09:51',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":1000,"amountUsed":3.57}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-1c784a94b11628a46b41ec7a' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-80f632de20460894814ee353', 'xl-80f632de20460894814ee353', 5, 'Broadcast', '2026-10-26', 5000,
  66.2, 3.7, 'SE', '10:01', '10:12',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":5000,"amountUsed":17.85}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-80f632de20460894814ee353' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-1fec2030ff1ea9d786d3df78', 'xl-1fec2030ff1ea9d786d3df78', 5, 'Broadcast', '2026-10-26', 4500,
  66.2, 3.7, 'SE', '10:22', '10:32',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":4500,"amountUsed":16.065}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-1fec2030ff1ea9d786d3df78' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-9d416ad513060f10b471cda1', 'xl-9d416ad513060f10b471cda1', 5, 'Broadcast', '2026-10-26', 3000,
  66.2, 3.7, 'SE', '10:42', '10:49',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":3000,"amountUsed":10.71}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-9d416ad513060f10b471cda1' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-24054da50da2b520bb5f908f', 'xl-24054da50da2b520bb5f908f', 5, 'Broadcast', '2026-10-26', 1200,
  66.2, 3.7, 'SE', '10:59', '11:04',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":1200,"amountUsed":4.284}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-24054da50da2b520bb5f908f' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-aa1896938da462940bca26ce', 'xl-aa1896938da462940bca26ce', 5, 'Broadcast', '2026-10-26', 3000,
  70.6, 4.9, 'SE', '11:14', '11:21',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":3000,"amountUsed":10.71}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-aa1896938da462940bca26ce' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-26359b1431df0ffb8348862b', 'xl-26359b1431df0ffb8348862b', 5, 'Broadcast', '2026-10-26', 5000,
  70.6, 4.9, 'SE', '11:31', '11:42',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":5000,"amountUsed":17.85}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-26359b1431df0ffb8348862b' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-d09f4482f663a72a54c2d919', 'xl-d09f4482f663a72a54c2d919', 5, 'Broadcast', '2026-10-26', 2000,
  70.6, 4.9, 'SE', '11:52', '11:57',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":2000,"amountUsed":7.14}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-d09f4482f663a72a54c2d919' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-39c6c00cec28f2b3d0cc31b2', 'xl-39c6c00cec28f2b3d0cc31b2', 5, 'Broadcast', '2026-10-26', 2000,
  73.9, 5.6, 'SE', '12:07', '12:12',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":2000,"amountUsed":7.14}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-39c6c00cec28f2b3d0cc31b2' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-54c5f9f80b442d49501cd419', 'xl-54c5f9f80b442d49501cd419', 5, 'Broadcast', '2026-10-26', 3000,
  73.9, 5.6, 'SE', '12:22', '12:29',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":3000,"amountUsed":10.71}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-54c5f9f80b442d49501cd419' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-5ecadc64014ad89f3dcb38a0', 'xl-5ecadc64014ad89f3dcb38a0', 5, 'Broadcast', '2026-10-26', 3500,
  73.9, 5.6, 'SE', '12:39', '12:47',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":3500,"amountUsed":12.495}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-5ecadc64014ad89f3dcb38a0' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-69992bbf40a711dec9a6514b', 'xl-69992bbf40a711dec9a6514b', 5, 'Broadcast', '2026-10-26', 100,
  73.9, 5.6, 'SE', '12:57', '13:02',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":100,"amountUsed":0.357}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-69992bbf40a711dec9a6514b' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-6a284ca245dd0b021e3af823', 'xl-6a284ca245dd0b021e3af823', 5, 'Broadcast', '2026-10-26', 5000,
  74.7, 5.5, 'SE', '13:12', '13:23',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":5000,"amountUsed":17.85}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-6a284ca245dd0b021e3af823' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-744de0b525a5facc259b1e9b', 'xl-744de0b525a5facc259b1e9b', 5, 'Broadcast', '2026-10-26', 5500,
  74.7, 5.5, 'SE', '13:33', '13:45',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":5500,"amountUsed":19.635}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-744de0b525a5facc259b1e9b' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-77273b1a1740e02febaae46b', 'xl-77273b1a1740e02febaae46b', 5, 'Broadcast', '2026-10-26', 3000,
  74.7, 5.5, 'SE', '13:55', '14:02',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":3000,"amountUsed":10.71}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-77273b1a1740e02febaae46b' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-85ca54db7429b466d61364e6', 'xl-85ca54db7429b466d61364e6', 5, 'Broadcast', '2026-10-27', 3000,
  52.9, 4, 'SE', '07:00', '07:07',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":3000,"amountUsed":10.71}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-85ca54db7429b466d61364e6' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-8ef8f56e0303e4850180b145', 'xl-8ef8f56e0303e4850180b145', 5, 'Broadcast', '2026-10-27', 2000,
  52.9, 4, 'SE', '07:22', '07:27',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":2000,"amountUsed":7.14}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-8ef8f56e0303e4850180b145' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-9852ba12059e3e6f0b70deea', 'xl-9852ba12059e3e6f0b70deea', 5, 'Broadcast', '2026-10-27', 3000,
  52.9, 4, 'SE', '07:42', '07:49',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":3000,"amountUsed":10.71}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-9852ba12059e3e6f0b70deea' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-a7b6c3ec299755929bd92074', 'xl-a7b6c3ec299755929bd92074', 5, 'Broadcast', '2026-10-27', 1500,
  57.3, 4.3, 'E', '08:04', '08:09',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":1500,"amountUsed":5.355}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-a7b6c3ec299755929bd92074' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-b5685cba8fb2d3fa4f4aae0f', 'xl-b5685cba8fb2d3fa4f4aae0f', 5, 'Broadcast', '2026-10-27', 2500,
  57.3, 4.3, 'E', '08:24', '08:30',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":2500,"amountUsed":8.925}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-b5685cba8fb2d3fa4f4aae0f' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-b9c5aedd3c8e84bd0af320fc', 'xl-b9c5aedd3c8e84bd0af320fc', 5, 'Broadcast', '2026-10-27', 3000,
  57.3, 4.3, 'E', '08:45', '08:52',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":3000,"amountUsed":10.71}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-b9c5aedd3c8e84bd0af320fc' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-bc7baf6119cd87db80105492', 'xl-bc7baf6119cd87db80105492', 5, 'Broadcast', '2026-10-27', 5500,
  62.6, 3.8, 'SE', '09:07', '09:19',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":5500,"amountUsed":19.635}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-bc7baf6119cd87db80105492' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-c0bb633a7e36ba5a497199ca', 'xl-c0bb633a7e36ba5a497199ca', 5, 'Broadcast', '2026-10-27', 2000,
  62.6, 3.8, 'SE', '09:34', '09:39',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":2000,"amountUsed":7.14}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-c0bb633a7e36ba5a497199ca' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-c3232f916f5ae4626eb950b4', 'xl-c3232f916f5ae4626eb950b4', 5, 'Broadcast', '2026-10-27', 5000,
  62.6, 3.8, 'SE', '09:54', '10:05',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":5000,"amountUsed":17.85}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-c3232f916f5ae4626eb950b4' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-c49d1370843bccbbb9302332', 'xl-c49d1370843bccbbb9302332', 5, 'Broadcast', '2026-10-27', 2700,
  65.6, 3.5, 'E', '10:20', '10:26',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":2700,"amountUsed":9.639}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-c49d1370843bccbbb9302332' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-c8e75ad8c3a4be63fd920088', 'xl-c8e75ad8c3a4be63fd920088', 5, 'Broadcast', '2026-10-27', 3600,
  65.6, 3.5, 'E', '10:41', '10:49',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":3600,"amountUsed":12.852}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-c8e75ad8c3a4be63fd920088' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-ca575ffe26ea985438308cb9', 'xl-ca575ffe26ea985438308cb9', 5, 'Broadcast', '2026-10-27', 2500,
  69.2, 2, 'SE', '11:04', '11:10',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":2500,"amountUsed":8.925}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-ca575ffe26ea985438308cb9' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-e2e32a55401b45cba5db080e', 'xl-e2e32a55401b45cba5db080e', 5, 'Broadcast', '2026-10-27', 6000,
  69.2, 2, 'SE', '11:25', '11:39',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":6000,"amountUsed":21.42}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-e2e32a55401b45cba5db080e' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-e4c0edb79a9a0b8fbfd9edf7', 'xl-e4c0edb79a9a0b8fbfd9edf7', 5, 'Broadcast', '2026-10-27', 2700,
  69.2, 2, 'SE', '11:54', '12:00',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":2700,"amountUsed":9.639}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-e4c0edb79a9a0b8fbfd9edf7' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-e76f0b8026bacede023354d6', 'xl-e76f0b8026bacede023354d6', 5, 'Broadcast', '2026-10-27', 3000,
  74.2, 2.9, 'SE', '12:15', '12:22',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":3000,"amountUsed":10.71}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-e76f0b8026bacede023354d6' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-ec8cda97a3f2ac94df62938d', 'xl-ec8cda97a3f2ac94df62938d', 5, 'Broadcast', '2026-10-27', 1200,
  74.2, 2.9, 'SE', '12:37', '12:42',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":1200,"amountUsed":4.284}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-ec8cda97a3f2ac94df62938d' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-f243b497eb45a8b9c63d7631', 'xl-f243b497eb45a8b9c63d7631', 5, 'Broadcast', '2026-10-27', 3000,
  74.2, 2.9, 'SE', '12:57', '13:04',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":3000,"amountUsed":10.71}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-f243b497eb45a8b9c63d7631' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-f683f0187d2f66968e3b6e84', 'xl-f683f0187d2f66968e3b6e84', 5, 'Broadcast', '2026-10-27', 2300,
  76.5, 6.9, 'S', '13:19', '13:24',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":2300,"amountUsed":8.211}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-f683f0187d2f66968e3b6e84' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-047c65c9ce1a2b7b22132121', 'xl-047c65c9ce1a2b7b22132121', 5, 'Broadcast', '2026-10-27', 2000,
  76.5, 6.9, 'S', '13:39', '13:44',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":2000,"amountUsed":7.14}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-047c65c9ce1a2b7b22132121' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-c22e612fa720e68f17823eba', 'xl-c22e612fa720e68f17823eba', 5, 'Broadcast', '2026-10-28', 157000,
  52.4, 3, 'SE', '07:00', '12:53',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":157000,"amountUsed":560.49}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-c22e612fa720e68f17823eba' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-338e709a2be10c1649fa1d85', 'xl-338e709a2be10c1649fa1d85', 5, 'Broadcast', '2026-10-28', 20000,
  78.9, 9.1, 'SE', '14:01', '14:46',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":20000,"amountUsed":71.4}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-338e709a2be10c1649fa1d85' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-77ca3c1d407366001a4149a0', 'xl-77ca3c1d407366001a4149a0', 5, 'Broadcast', '2026-10-28', 20000,
  78.5, 8.6, 'S', '15:54', '16:39',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":20000,"amountUsed":71.4}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-77ca3c1d407366001a4149a0' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-2392e8ec2dfa2816b9e71abe', 'xl-2392e8ec2dfa2816b9e71abe', 5, 'Broadcast', '2026-10-30', 8000,
  56.7, 2.6, 'E', '07:00', '07:18',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":8000,"amountUsed":28.56}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-2392e8ec2dfa2816b9e71abe' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-aabcc5043f5370152253a8ec', 'xl-aabcc5043f5370152253a8ec', 5, 'Broadcast', '2026-10-30', 140000,
  59.8, 3.3, 'E', '08:30', '13:45',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":140000,"amountUsed":499.8}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-aabcc5043f5370152253a8ec' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-f3117ad78edc16f1114670f4', 'xl-f3117ad78edc16f1114670f4', 5, 'Broadcast', '2026-10-30', 10000,
  75.9, 5.1, 'SE', '14:57', '15:20',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":10000,"amountUsed":35.7}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-f3117ad78edc16f1114670f4' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-b887e7a95672e25679b4584e', 'xl-b887e7a95672e25679b4584e', 5, 'Broadcast', '2026-10-30', 8000,
  72, 3.7, 'SE', '16:32', '16:50',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":8000,"amountUsed":28.56}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-b887e7a95672e25679b4584e' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-b24865760e94b9d6d1012ba6', 'xl-b24865760e94b9d6d1012ba6', 5, 'Broadcast', '2026-11-04', 65000,
  53.9, 9.5, 'W', '07:00', '09:26',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":65000,"amountUsed":232.05}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-b24865760e94b9d6d1012ba6' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-manual-kevin-gerschefske', 'manual-kevin-gerschefske', 5, 'Broadcast', '2026-11-04', 35000,
  55.1, 10.3, 'W', '09:48', '11:07',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":35000,"amountUsed":124.95}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'manual-kevin-gerschefske' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-15c9e78b7cb7e26676fa3eaf', 'xl-15c9e78b7cb7e26676fa3eaf', 5, 'Broadcast', '2026-11-04', 11000,
  59.2, 10, 'W', '11:29', '11:54',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":11000,"amountUsed":39.27}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-15c9e78b7cb7e26676fa3eaf' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-5651f1b1a7eedf267ab26101', 'xl-5651f1b1a7eedf267ab26101', 5, 'Broadcast', '2026-11-04', 3000,
  62.4, 8.7, 'W', '12:16', '12:23',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":3000,"amountUsed":10.71}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-5651f1b1a7eedf267ab26101' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-d4f88ce79dabf03bd99024d0', 'xl-d4f88ce79dabf03bd99024d0', 5, 'Broadcast', '2026-11-04', 3000,
  62.4, 8.7, 'W', '12:45', '12:52',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":3000,"amountUsed":10.71}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-d4f88ce79dabf03bd99024d0' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-1489b3e954ae52cd4ef4ef34', 'xl-1489b3e954ae52cd4ef4ef34', 5, 'Broadcast', '2026-11-04', 6000,
  64, 7.8, 'W', '13:14', '13:28',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":6000,"amountUsed":21.42}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-1489b3e954ae52cd4ef4ef34' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-232007e2a62044d35f97310d', 'xl-232007e2a62044d35f97310d', 5, 'Broadcast', '2026-11-04', 5000,
  64, 7.8, 'W', '13:50', '14:01',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":5000,"amountUsed":17.85}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-232007e2a62044d35f97310d' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-500f6fb54b7cf8af5fd4497b', 'xl-500f6fb54b7cf8af5fd4497b', 5, 'Broadcast', '2026-11-04', 5000,
  65.2, 7.9, 'W', '14:23', '14:34',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":5000,"amountUsed":17.85}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-500f6fb54b7cf8af5fd4497b' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-8a756fb1905f9327e13a1b5d', 'xl-8a756fb1905f9327e13a1b5d', 5, 'Broadcast', '2026-11-04', 3500,
  65.2, 7.9, 'W', '14:56', '15:04',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":3500,"amountUsed":12.495}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-8a756fb1905f9327e13a1b5d' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-a43817ad242966863f92f443', 'xl-a43817ad242966863f92f443', 5, 'Broadcast', '2026-11-04', 4000,
  65.8, 7.7, 'W', '15:26', '15:35',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":4000,"amountUsed":14.28}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-a43817ad242966863f92f443' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-d8b9233dcdc7e54edf94e460', 'xl-d8b9233dcdc7e54edf94e460', 5, 'Broadcast', '2026-11-04', 5000,
  65.8, 7.7, 'W', '15:57', '16:08',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":5000,"amountUsed":17.85}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-d8b9233dcdc7e54edf94e460' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-bc500ad27dfb10670f6d2356', 'xl-bc500ad27dfb10670f6d2356', 5, 'Broadcast', '2026-11-05', 18000,
  49.3, 3.6, 'W', '07:00', '07:41',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":18000,"amountUsed":64.26}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-bc500ad27dfb10670f6d2356' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-093cbf791bfcfb112b0ad9e5', 'xl-093cbf791bfcfb112b0ad9e5', 5, 'Broadcast', '2026-11-05', 9700,
  54.1, 4.5, 'W', '08:18', '08:40',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":9700,"amountUsed":34.629}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-093cbf791bfcfb112b0ad9e5' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-190226f81fb7cd2adf2af1a5', 'xl-190226f81fb7cd2adf2af1a5', 5, 'Broadcast', '2026-11-05', 4000,
  59.4, 4, 'W', '09:17', '09:26',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":4000,"amountUsed":14.28}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-190226f81fb7cd2adf2af1a5' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-3eeccbcc0391118464f7be14', 'xl-3eeccbcc0391118464f7be14', 5, 'Broadcast', '2026-11-05', 4000,
  63.8, 5.1, 'W', '10:03', '10:12',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":4000,"amountUsed":14.28}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-3eeccbcc0391118464f7be14' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-bfa49c011e1a53be71dd2f0b', 'xl-bfa49c011e1a53be71dd2f0b', 5, 'Broadcast', '2026-11-05', 15000,
  63.8, 5.1, 'W', '10:49', '11:23',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":15000,"amountUsed":53.55}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-bfa49c011e1a53be71dd2f0b' AND "round" = 5 AND substr("date", 1, 4) = '2026');

INSERT OR IGNORE INTO "applications" (
  "id", "client_id", "round", "treatment_type", "date", "treated_sqft",
  "temperature", "wind_speed", "wind_direction", "start_time", "stop_time",
  "applicator_name", "applicator_license", "inventory_posted",
  "products_json", "notes", "created_by", "created_at", "updated_at"
) SELECT
  'round5-2026-xl-ab36e50d5df4fbfc5bb20b63', 'xl-ab36e50d5df4fbfc5bb20b63', 5, 'Broadcast', '2026-11-05', 120000,
  70, 6.2, 'W', '12:00', '16:30',
  'Christopher Taylor', 'C25864', 0,
  '[{"productId":"4e8c98a7-58ee-42b7-957f-2b70547d4c50","name":"Lesco 28-0-3 Fertilizer","epa":"NA","rate":3.57,"unit":"lb","pest":"NA","treatedSqFt":120000,"amountUsed":428.4}]', '', 'migration-2026-11-06', '2026-11-06T21:30:00.000Z', '2026-11-06T21:30:00.000Z'
WHERE NOT EXISTS (SELECT 1 FROM "applications" WHERE "client_id" = 'xl-ab36e50d5df4fbfc5bb20b63' AND "round" = 5 AND substr("date", 1, 4) = '2026');

-- Completed properties no longer belong in unfinished Application 5 presets.
DELETE FROM "route_preset_stops"
WHERE "client_id" IN (
  'xl-6c822af67d144ffd27057676',
  'xl-6cfb6584fad3229017d3a2e3',
  'xl-aa1741489747b3e9ea3c53e3',
  'xl-45f56ac24593dc339e6f98a9',
  'xl-b6eaf3d42f12dd6a777a8bbc',
  'xl-c6817da7b9d69c52fb522e65',
  'xl-60f629d328b7b7b8d670b6cf',
  'xl-86e5ac9e8bdfe9249b2d1ae2',
  'xl-9de80e83d810285d24f84627',
  'xl-ee6e9b92b057bb93ca2aaf95',
  'xl-902093229fce58397f60bbe5',
  'xl-00dc787b45d3371bed115a9c',
  'xl-92641a82f57f507591ace592',
  'xl-fe948d0681e43b078469a3fa',
  'xl-ac4971fa8eefdbc0110ef865',
  'xl-e6f4b5008ebb78fecaa5a2ee',
  'xl-b3a138021cceb626fcdbce4d',
  'xl-0142ccc603385b122d431a26',
  'xl-af3b375b991cc251b4fe79cd',
  'xl-7b645ff71a2bbf57aaedb4a2',
  'xl-811fa3ad5f58504b9fae4bde',
  'xl-942f0b6409a6e68c83f110e6',
  'xl-0a7888caaa392ed9403c6f63',
  'xl-480ef2e5d5d5e71eed89cc6b',
  'xl-48885fffba451796a5ff2871',
  'xl-a68b0ae818986c4a2e102196',
  'xl-d5cd37fec8d866ba405b115e',
  'cf399301-a0c8-44a5-869c-dbb47f3ff7cb',
  'xl-6018e1bf238ad10d6d272a34',
  'xl-f478e9ff36fe935962c0bddf',
  'xl-e9000bb3617206c3e5ead00a',
  'xl-f49d1c4e80c93837d115e9b2',
  'xl-f16a374e7325101ec62a85af',
  'xl-f68b314b021d3ad4c81a9eac',
  'xl-1b701c8a02187009d7d365dd',
  'xl-4ca6072c17b660f280b671b3',
  'xl-ab61bad53c9c2f349bca0ece',
  'xl-bddf63f1d833d8820527ec0d',
  'xl-beee3905261af50fa1fb0c5a',
  'xl-2ba9a475d85e4eff193ef6ff',
  'xl-6d82950c5fbf1fe64b5c99ba',
  'xl-cab1f4d85c4f951ec05245f0',
  'xl-b620760caa0c3402d2b8d39a',
  'xl-426a896b1ef6bdcdef0108bc',
  'xl-c6c7aa5082d6886b949223f5',
  'xl-45ed34c03d80baf8bbc81a07',
  'xl-02be1e451988be8d8be6ad4c',
  'xl-4f8c1fef9720b999d69b6645',
  'xl-164273dfa3d351498a3c013b',
  'xl-690fe2195f28caf50be8e77a',
  'xl-1c784a94b11628a46b41ec7a',
  'xl-80f632de20460894814ee353',
  'xl-1fec2030ff1ea9d786d3df78',
  'xl-9d416ad513060f10b471cda1',
  'xl-24054da50da2b520bb5f908f',
  'xl-aa1896938da462940bca26ce',
  'xl-26359b1431df0ffb8348862b',
  'xl-d09f4482f663a72a54c2d919',
  'xl-39c6c00cec28f2b3d0cc31b2',
  'xl-54c5f9f80b442d49501cd419',
  'xl-5ecadc64014ad89f3dcb38a0',
  'xl-69992bbf40a711dec9a6514b',
  'xl-6a284ca245dd0b021e3af823',
  'xl-744de0b525a5facc259b1e9b',
  'xl-77273b1a1740e02febaae46b',
  'xl-85ca54db7429b466d61364e6',
  'xl-8ef8f56e0303e4850180b145',
  'xl-9852ba12059e3e6f0b70deea',
  'xl-a7b6c3ec299755929bd92074',
  'xl-b5685cba8fb2d3fa4f4aae0f',
  'xl-b9c5aedd3c8e84bd0af320fc',
  'xl-bc7baf6119cd87db80105492',
  'xl-c0bb633a7e36ba5a497199ca',
  'xl-c3232f916f5ae4626eb950b4',
  'xl-c49d1370843bccbbb9302332',
  'xl-c8e75ad8c3a4be63fd920088',
  'xl-ca575ffe26ea985438308cb9',
  'xl-e2e32a55401b45cba5db080e',
  'xl-e4c0edb79a9a0b8fbfd9edf7',
  'xl-e76f0b8026bacede023354d6',
  'xl-ec8cda97a3f2ac94df62938d',
  'xl-f243b497eb45a8b9c63d7631',
  'xl-f683f0187d2f66968e3b6e84',
  'xl-047c65c9ce1a2b7b22132121',
  'xl-c22e612fa720e68f17823eba',
  'xl-338e709a2be10c1649fa1d85',
  'xl-77ca3c1d407366001a4149a0',
  'xl-2392e8ec2dfa2816b9e71abe',
  'xl-aabcc5043f5370152253a8ec',
  'xl-f3117ad78edc16f1114670f4',
  'xl-b887e7a95672e25679b4584e',
  'xl-b24865760e94b9d6d1012ba6',
  'manual-kevin-gerschefske',
  'xl-15c9e78b7cb7e26676fa3eaf',
  'xl-5651f1b1a7eedf267ab26101',
  'xl-d4f88ce79dabf03bd99024d0',
  'xl-1489b3e954ae52cd4ef4ef34',
  'xl-232007e2a62044d35f97310d',
  'xl-500f6fb54b7cf8af5fd4497b',
  'xl-8a756fb1905f9327e13a1b5d',
  'xl-a43817ad242966863f92f443',
  'xl-d8b9233dcdc7e54edf94e460',
  'xl-bc500ad27dfb10670f6d2356',
  'xl-093cbf791bfcfb112b0ad9e5',
  'xl-190226f81fb7cd2adf2af1a5',
  'xl-3eeccbcc0391118464f7be14',
  'xl-bfa49c011e1a53be71dd2f0b',
  'xl-ab36e50d5df4fbfc5bb20b63'
) AND "preset_id" IN (SELECT "id" FROM "route_presets" WHERE "round" = 5 AND "year" = 2026);
