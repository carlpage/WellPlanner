-- Projects Schema

# --- !Ups
CREATE TABLE "projects" ("id" SERIAL PRIMARY KEY, "name" varchar(50), "eventType" varchar(25), "bridesName" varchar(100), "groomsName" varchar(100),
 "notes" varchar(1024), "budget" double precision, "businessId" SERIAL, "customerId" SERIAL, FOREIGN KEY("customerId") REFERENCES "customers"(id), FOREIGN KEY("businessId") REFERENCES "businesses"(id), "modifiedDate" timestamp, "createdDate" timestamp);

# --- !Downs
DROP TABLE "projects";