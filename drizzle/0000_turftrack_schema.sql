CREATE TABLE `staff` (
  `id` text PRIMARY KEY NOT NULL,
  `email` text NOT NULL,
  `name` text DEFAULT '' NOT NULL,
  `certification_number` text DEFAULT '' NOT NULL,
  `role` text DEFAULT 'field' NOT NULL,
  `active` integer DEFAULT true NOT NULL,
  `created_at` text NOT NULL
);
--> statement-breakpoint
CREATE UNIQUE INDEX `staff_email_unique` ON `staff` (`email`);
--> statement-breakpoint
CREATE TABLE `clients` (
  `id` text PRIMARY KEY NOT NULL,
  `first_name` text DEFAULT '' NOT NULL,
  `last_name` text DEFAULT '' NOT NULL,
  `company` text DEFAULT '' NOT NULL,
  `phone` text DEFAULT '' NOT NULL,
  `email` text DEFAULT '' NOT NULL,
  `address` text DEFAULT '' NOT NULL,
  `city` text DEFAULT '' NOT NULL,
  `state` text DEFAULT '' NOT NULL,
  `zip` text DEFAULT '' NOT NULL,
  `sqft` real DEFAULT 0 NOT NULL,
  `route_eligible` integer DEFAULT true NOT NULL,
  `notes` text DEFAULT '' NOT NULL,
  `created_by` text NOT NULL,
  `created_at` text NOT NULL,
  `updated_at` text NOT NULL
);
--> statement-breakpoint
CREATE INDEX `idx_clients_name` ON `clients` (`last_name`,`first_name`);
--> statement-breakpoint
CREATE INDEX `idx_clients_city_zip` ON `clients` (`city`,`zip`);
--> statement-breakpoint
CREATE TABLE `products` (
  `id` text PRIMARY KEY NOT NULL,
  `name` text NOT NULL,
  `epa` text DEFAULT '' NOT NULL,
  `type` text NOT NULL,
  `rate` real NOT NULL,
  `unit` text NOT NULL,
  `pest` text DEFAULT '' NOT NULL,
  `stock_quantity` real DEFAULT 0 NOT NULL,
  `rounds_json` text DEFAULT '[]' NOT NULL,
  `notes` text DEFAULT '' NOT NULL,
  `created_by` text NOT NULL,
  `created_at` text NOT NULL,
  `updated_at` text NOT NULL
);
--> statement-breakpoint
CREATE INDEX `idx_products_name` ON `products` (`name`);
--> statement-breakpoint
CREATE TABLE `applications` (
  `id` text PRIMARY KEY NOT NULL,
  `client_id` text NOT NULL,
  `round` integer NOT NULL,
  `treatment_type` text DEFAULT 'Broadcast' NOT NULL,
  `date` text NOT NULL,
  `treated_sqft` real NOT NULL,
  `temperature` real NOT NULL,
  `wind_speed` real NOT NULL,
  `wind_direction` text NOT NULL,
  `start_time` text NOT NULL,
  `stop_time` text NOT NULL,
  `applicator_name` text DEFAULT '' NOT NULL,
  `applicator_license` text DEFAULT '' NOT NULL,
  `inventory_posted` integer DEFAULT false NOT NULL,
  `products_json` text DEFAULT '[]' NOT NULL,
  `notes` text DEFAULT '' NOT NULL,
  `created_by` text NOT NULL,
  `created_at` text NOT NULL,
  `updated_at` text NOT NULL
);
--> statement-breakpoint
CREATE INDEX `idx_applications_client_date` ON `applications` (`client_id`,`date`);
--> statement-breakpoint
CREATE INDEX `idx_applications_date` ON `applications` (`date`);
--> statement-breakpoint
CREATE TABLE `route_stops` (
  `id` text PRIMARY KEY NOT NULL,
  `date` text NOT NULL,
  `client_id` text NOT NULL,
  `stop_order` integer NOT NULL,
  `completed` integer DEFAULT false NOT NULL,
  `assigned_to` text DEFAULT '' NOT NULL,
  `created_by` text NOT NULL,
  `created_at` text NOT NULL
);
--> statement-breakpoint
CREATE INDEX `idx_route_stops_date_order` ON `route_stops` (`date`,`stop_order`);
--> statement-breakpoint
CREATE TABLE `route_presets` (
  `id` text PRIMARY KEY NOT NULL,
  `name` text NOT NULL,
  `round` integer NOT NULL,
  `year` integer NOT NULL,
  `drive_minutes` real DEFAULT 0 NOT NULL,
  `break_minutes` real DEFAULT 60 NOT NULL,
  `created_by` text NOT NULL,
  `created_at` text NOT NULL,
  `updated_at` text NOT NULL
);
--> statement-breakpoint
CREATE INDEX `idx_route_presets_round_year` ON `route_presets` (`round`,`year`);
--> statement-breakpoint
CREATE TABLE `route_preset_stops` (
  `id` text PRIMARY KEY NOT NULL,
  `preset_id` text NOT NULL,
  `client_id` text NOT NULL,
  `stop_order` integer NOT NULL,
  `created_at` text NOT NULL
);
--> statement-breakpoint
CREATE INDEX `idx_route_preset_stops_preset_order` ON `route_preset_stops` (`preset_id`,`stop_order`);
--> statement-breakpoint
CREATE TABLE `audit_log` (
  `id` text PRIMARY KEY NOT NULL,
  `actor_email` text NOT NULL,
  `action` text NOT NULL,
  `entity_type` text NOT NULL,
  `entity_id` text NOT NULL,
  `details` text DEFAULT '' NOT NULL,
  `created_at` text NOT NULL
);
--> statement-breakpoint
CREATE INDEX `idx_audit_created_at` ON `audit_log` (`created_at`);
