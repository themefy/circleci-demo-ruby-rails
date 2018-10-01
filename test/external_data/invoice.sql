CREATE TABLE "public"."invoice" (
	"id" int8 NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "public"."invoice" OWNER TO "postgres";

BEGIN;
INSERT INTO "public"."invoice" VALUES ('1');
INSERT INTO "public"."invoice" VALUES ('2');
INSERT INTO "public"."invoice" VALUES ('3');
INSERT INTO "public"."invoice" VALUES ('4');
INSERT INTO "public"."invoice" VALUES ('5');
COMMIT;