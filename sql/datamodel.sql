CREATE TABLE "card_holder" (
  "id" long PRIMARY KEY,
  "pan" varchar(16),
  "expiricy_date" timestamp
);

CREATE TABLE "transaction" (
  "id" long PRIMARY KEY,
  "credentials" varchar(100),
  "amount" numeric,
  "merchant" varchar(256),
  "pan" long
);

CREATE TABLE "transaction_counter" (
  "id" long PRIMARY KEY,
  "transaction" long,
  "issued" boolean
);

CREATE UNIQUE INDEX ON "card_holder" ("pan");

CREATE UNIQUE INDEX ON "transaction" ("credentials");

CREATE INDEX ON "transaction_counter" ("transaction", "issued");

ALTER TABLE "transaction" ADD FOREIGN KEY ("pan") REFERENCES "card_holder" ("id");

ALTER TABLE "transaction" ADD FOREIGN KEY ("id") REFERENCES "transaction_counter" ("transaction");
