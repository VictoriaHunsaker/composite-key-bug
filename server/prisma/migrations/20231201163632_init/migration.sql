-- CreateTable
CREATE TABLE "ExampleRelation" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "tenantId" UUID NOT NULL,
    "isExample" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "ExampleRelation_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Example" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "tenantId" UUID NOT NULL,
    "exampleRelationId" UUID NOT NULL,
    "field" TEXT,
    "otherField" TEXT
);

-- CreateIndex
CREATE UNIQUE INDEX "Example_tenantId_id_key" ON "Example"("tenantId", "id");

-- AddForeignKey
ALTER TABLE "Example" ADD CONSTRAINT "Example_exampleRelationId_fkey" FOREIGN KEY ("exampleRelationId") REFERENCES "ExampleRelation"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

INSERT INTO "ExampleRelation" (id, "tenantId", "isExample")
VALUES
    ('f1684f9b-701a-4edb-9a89-3daac5c7fd0d', '63ac9535-d357-40cf-9d8a-9d6a76a4e81f', true),
    ('19e4e026-b873-4bc2-b3f4-c024fe721182', '63ac9535-d357-40cf-9d8a-9d6a76a4e81f', false);

INSERT INTO "Example" (id, "tenantId", field, "otherField", "exampleRelationId")
VALUES
    ('55d0ac05-7961-4fe6-999d-c0dc7ea84b66', '63ac9535-d357-40cf-9d8a-9d6a76a4e81f', 'Field A', 'Field B', 'f1684f9b-701a-4edb-9a89-3daac5c7fd0d'),
    ('42e42d73-bc3f-4869-a6b3-ad7b4211488f', '63ac9535-d357-40cf-9d8a-9d6a76a4e81f', 'Beep', 'Boop', '19e4e026-b873-4bc2-b3f4-c024fe721182'),
    ('8066c9dc-1e4e-4651-ad51-57d0e3a7735d', '63ac9535-d357-40cf-9d8a-9d6a76a4e81f', 'I am a field', null, 'f1684f9b-701a-4edb-9a89-3daac5c7fd0d'),
    ('f4a4fe0c-fc7e-45bf-b38a-ed7bbc6f141f', '63ac9535-d357-40cf-9d8a-9d6a76a4e81f', null, 'I am another field', '19e4e026-b873-4bc2-b3f4-c024fe721182');