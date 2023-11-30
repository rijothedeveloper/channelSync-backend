CREATE TYPE "Roles" AS ENUM (
  'ADMIN',
  'USER'
);

CREATE TABLE "users" (
  "id" bigserial PRIMARY KEY,
  "username" varchar NOT NULL,
  "role" Roles NOT NULL,
  "created_at" timestamp DEFAULT (now())
);

CREATE TABLE "products" (
  "id" bigserial PRIMARY KEY,
  "user_id" integer NOT NULL,
  "title" varchar NOT NULL,
  "description" varchar,
  "price" float NOT NULL,
  "quantity" description NOT NULL
);

CREATE INDEX ON "users" ("username");

CREATE INDEX ON "products" ("user_id");

ALTER TABLE "products" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");
