-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/vgYrzt
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Airport" (
    "ident" varchar pk   NOT NULL,
    "airport_name" varchar   NOT NULL,
    "GPS_code" varchar   NOT NULL,
    "IATA_code" varchar   NOT NULL,
    "airfield_size" varchar   NOT NULL,
    "latitude" float64   NOT NULL,
    "longitude" float64   NOT NULL,
    "elevation" int   NOT NULL,
    "continent" varchar   NOT NULL,
    "continent_code" varchar   NOT NULL,
    "country_code" varchar   NOT NULL,
    "region_code" varchar   NOT NULL,
    "municipality" varchar   NOT NULL,
    "scheduled_service" boolean   NOT NULL
);

CREATE TABLE "Signals" (
    "ident" varchar pk   NOT NULL,
    "freq_count" int   NOT NULL,
    "freq_code" varchar   NOT NULL,
    "freq_name" varchar   NOT NULL,
    "navaid_name" varchar   NOT NULL,
    "navaid_code" varchar   NOT NULL,
    "frequency" float64   NOT NULL
);

CREATE TABLE "Airlines" (
    "ident" varchar pk   NOT NULL,
    "airline_count" int   NOT NULL,
    "airline_name" varchar   NOT NULL,
    "airline_code" varchar   NOT NULL
);

CREATE TABLE "Runways" (
    "ident" varchar pk   NOT NULL,
    "runway_ID" varchar fk   NOT NULL,
    "rlength" int   NOT NULL,
    "rwidth" int   NOT NULL,
    "rsurface" varchar   NOT NULL
);

ALTER TABLE "Signals" ADD CONSTRAINT "fk_Signals_ident" FOREIGN KEY("ident")
REFERENCES "Airport" ("ident");

ALTER TABLE "Airlines" ADD CONSTRAINT "fk_Airlines_ident" FOREIGN KEY("ident")
REFERENCES "Airport" ("ident");

ALTER TABLE "Runways" ADD CONSTRAINT "fk_Runways_ident" FOREIGN KEY("ident")
REFERENCES "Airport" ("ident");

