-- Add an optional envelope sender (SMTP MAIL FROM / Return-Path) to sending
-- profiles, so the bounce/return address can differ from the visible From.
ALTER TABLE "mail_sending_profile" ADD COLUMN "envelopeSender" TEXT;
