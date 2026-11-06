-- Post Teresa Williams's newly completed Application 5 to current inventory once.
UPDATE "products"
SET
  "stock_quantity" = "stock_quantity" - 7.14,
  "updated_at" = '2026-11-06T20:05:00.000Z'
WHERE "id" = '4e8c98a7-58ee-42b7-957f-2b70547d4c50'
  AND EXISTS (
    SELECT 1
    FROM "applications"
    WHERE "id" = 'teresa-williams-2026-r5'
      AND "inventory_posted" = 0
  );

UPDATE "applications"
SET
  "inventory_posted" = 1,
  "updated_at" = '2026-11-06T20:05:00.000Z'
WHERE "id" = 'teresa-williams-2026-r5'
  AND EXISTS (
    SELECT 1
    FROM "products"
    WHERE "id" = '4e8c98a7-58ee-42b7-957f-2b70547d4c50'
  );
