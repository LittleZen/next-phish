-- Add a configurable subject to email templates.
ALTER TABLE "email_template" ADD COLUMN "subject" TEXT NOT NULL DEFAULT '';

-- Preserve historical behaviour: delivery previously sent a fixed "Information"
-- subject for every template, so backfill existing rows with that value.
UPDATE "email_template" SET "subject" = 'Information' WHERE "subject" = '';
