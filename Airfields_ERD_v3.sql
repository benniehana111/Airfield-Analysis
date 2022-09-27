-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/vgYrzt
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "airfields" (
    "GPS_code" varchar   NOT NULL,
    "name" varchar   NOT NULL,
    "latitude" float64   NOT NULL,
    "longitude" float64   NOT NULL,
    "runway_length" int   NOT NULL,
    "freq_count" int   NOT NULL,
    "airline_count" int   NOT NULL
);

CREATE TABLE "runway_surface" (
    "GPS_Code" varchar pk   NOT NULL,
    "surface" int   NOT NULL
);

ALTER TABLE "runway_surface" ADD CONSTRAINT "fk_runway_surface_GPS_Code" FOREIGN KEY("GPS_Code")
REFERENCES "airfields" ("GPS_code");

