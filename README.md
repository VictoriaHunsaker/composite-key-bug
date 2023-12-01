# Steps to get up and running
1. in your terminal, run `docker-compose up --build`
2. visit http://localhost:9099/example
3. return to terminal to observe prisma logs

# Logs you'll see (with prettified SQL)
```
-----------------------------------
 Invalid query output
 -----------------------------------
 2023-12-01T19:26:31.143Z prisma:client  Prisma Client call:
 2023-12-01T19:26:31.144Z prisma:client  prisma.example.findUnique({
   where: {
     tenantId_id: {
       id: "55d0ac05-7961-4fe6-999d-c0dc7ea84b66",
       tenantId: "63ac9535-d357-40cf-9d8a-9d6a76a4e81f"
     },
     tenantId: "63ac9535-d357-40cf-9d8a-9d6a76a4e81f"
   }
 })
 2023-12-01T19:26:31.144Z prisma:client  Generated request:
 2023-12-01T19:26:31.144Z prisma:client  {
   "modelName": "Example",
   "action": "findUnique",
   "query": {
     "arguments": {
       "where": {
         "tenantId_id": {
           "id": "55d0ac05-7961-4fe6-999d-c0dc7ea84b66",
           "tenantId": "63ac9535-d357-40cf-9d8a-9d6a76a4e81f"
         },
         "tenantId": "63ac9535-d357-40cf-9d8a-9d6a76a4e81f"
       }
     },
     "selection": {
       "$composites": true,
       "$scalars": true
     }
   }
 }


 2023-12-01T19:26:31.145Z prisma:client  Prisma Client call:
 2023-12-01T19:26:31.145Z prisma:client  prisma.example.findUnique({
   where: {
     tenantId_id: {
       id: "42e42d73-bc3f-4869-a6b3-ad7b4211488f",
       tenantId: "63ac9535-d357-40cf-9d8a-9d6a76a4e81f"
     },
     tenantId: "63ac9535-d357-40cf-9d8a-9d6a76a4e81f"
   }
 })
 2023-12-01T19:26:31.145Z prisma:client  Generated request:
 2023-12-01T19:26:31.145Z prisma:client  {
   "modelName": "Example",
   "action": "findUnique",
   "query": {
     "arguments": {
       "where": {
         "tenantId_id": {
           "id": "42e42d73-bc3f-4869-a6b3-ad7b4211488f",
           "tenantId": "63ac9535-d357-40cf-9d8a-9d6a76a4e81f"
         },
         "tenantId": "63ac9535-d357-40cf-9d8a-9d6a76a4e81f"
       }
     },
     "selection": {
       "$composites": true,
       "$scalars": true
     }
   }
 }


 2023-12-01T19:26:31.145Z prisma:client  Prisma Client call:
 2023-12-01T19:26:31.145Z prisma:client  prisma.example.findUnique({
   where: {
     tenantId_id: {
       id: "8066c9dc-1e4e-4651-ad51-57d0e3a7735d",
       tenantId: "63ac9535-d357-40cf-9d8a-9d6a76a4e81f"
     },
     tenantId: "63ac9535-d357-40cf-9d8a-9d6a76a4e81f"
   }
 })
 2023-12-01T19:26:31.145Z prisma:client  Generated request:
 2023-12-01T19:26:31.145Z prisma:client  {
   "modelName": "Example",
   "action": "findUnique",
   "query": {
     "arguments": {
       "where": {
         "tenantId_id": {
           "id": "8066c9dc-1e4e-4651-ad51-57d0e3a7735d",
           "tenantId": "63ac9535-d357-40cf-9d8a-9d6a76a4e81f"
         },
         "tenantId": "63ac9535-d357-40cf-9d8a-9d6a76a4e81f"
       }
     },
     "selection": {
       "$composites": true,
       "$scalars": true
     }
   }
 }


 2023-12-01T19:26:31.146Z prisma:client:libraryEngine  requestBatch
 2023-12-01T19:26:31.147Z prisma:get-platform  Found distro info:
 {
   "targetDistro": "musl",
   "familyDistro": "alpine",
   "originalDistro": "alpine"
 }
 2023-12-01T19:26:31.148Z prisma:get-platform  Don't know any platform-specific paths for "alpine" on arm64 (aarch64)
 2023-12-01T19:26:31.148Z prisma:get-platform  Falling back to "ldconfig" and other generic paths
 2023-12-01T19:26:31.155Z prisma:get-platform  Found libssl.so file using "ldconfig" or other generic paths: libssl.so.3
 2023-12-01T19:26:31.155Z prisma:get-platform  The parsed libssl version is: 3.0.x
 2023-12-01T19:26:31.155Z prisma:client:engines:resolveEnginePath  enginePath /app/node_modules/.prisma/client/libquery_engine-linux-musl-arm64-openssl-3.0.x.so.node
 2023-12-01T19:26:31.160Z prisma:client:libraryEngine  library starting
 2023-12-01T19:26:31.194Z prisma:client:libraryEngine  library started
 prisma:query SELECT
	"public"."Example"."tenantId",
	"public"."Example"."id",
	"public"."Example"."exampleRelationId",
	"public"."Example"."field",
	"public"."Example"."otherField"
FROM
	"public"."Example"
WHERE (("public"."Example"."id" = $1
		AND "public"."Example"."tenantId" = $2)
	OR ("public"."Example"."tenantId" = $3
		AND "public"."Example"."id" = $4)
	OR "public"."Example"."tenantId" = $5
	OR ("public"."Example"."tenantId" = $6
		AND "public"."Example"."id" = $7)
	OR "public"."Example"."tenantId" = $8
	OR "public"."Example"."tenantId" = $9) OFFSET $10

 Query: SELECT
	"public"."Example"."tenantId",
	"public"."Example"."id",
	"public"."Example"."exampleRelationId",
	"public"."Example"."field",
	"public"."Example"."otherField"
FROM
	"public"."Example"
WHERE (("public"."Example"."id" = $1 AND "public"."Example"."tenantId" = $2)
	OR ("public"."Example"."tenantId" = $3 AND "public"."Example"."id" = $4)
	OR "public"."Example"."tenantId" = $5 -- THIS IS INCORRECT
	OR ("public"."Example"."tenantId" = $6 AND "public"."Example"."id" = $7)
	OR "public"."Example"."tenantId" = $8 -- THIS IS INCORRECT
	OR "public"."Example"."tenantId" = $9 -- THIS IS INCORRECT
  ) OFFSET $10

 Params: ["55d0ac05-7961-4fe6-999d-c0dc7ea84b66","63ac9535-d357-40cf-9d8a-9d6a76a4e81f","63ac9535-d357-40cf-9d8a-9d6a76a4e81f","42e42d73-bc3f-4869-a6b3-ad7b4211488f","63ac9535-d357-40cf-9d8a-9d6a76a4e81f","63ac9535-d357-40cf-9d8a-9d6a76a4e81f","8066c9dc-1e4e-4651-ad51-57d0e3a7735d","63ac9535-d357-40cf-9d8a-9d6a76a4e81f","63ac9535-d357-40cf-9d8a-9d6a76a4e81f",0]
```

```
 -----------------------------------
 Valid query output
 -----------------------------------
 2023-12-01T19:30:59.778Z prisma:client  Prisma Client call:
 2023-12-01T19:30:59.778Z prisma:client  prisma.example.findUnique({
   where: {
     tenantId_id: {
       id: "8066c9dc-1e4e-4651-ad51-57d0e3a7735d",
       tenantId: "63ac9535-d357-40cf-9d8a-9d6a76a4e81f"
     },
     exampleRelationId: "f1684f9b-701a-4edb-9a89-3daac5c7fd0d"
   }
 })
 2023-12-01T19:30:59.778Z prisma:client  Generated request:
 2023-12-01T19:30:59.778Z prisma:client  {
   "modelName": "Example",
   "action": "findUnique",
   "query": {
     "arguments": {
       "where": {
         "tenantId_id": {
           "id": "8066c9dc-1e4e-4651-ad51-57d0e3a7735d",
           "tenantId": "63ac9535-d357-40cf-9d8a-9d6a76a4e81f"
         },
         "exampleRelationId": "f1684f9b-701a-4edb-9a89-3daac5c7fd0d"
       }
     },
     "selection": {
       "$composites": true,
       "$scalars": true
     }
   }
 }


 2023-12-01T19:30:59.778Z prisma:client  Prisma Client call:
 2023-12-01T19:30:59.778Z prisma:client  prisma.example.findUnique({
   where: {
     tenantId_id: {
       id: "f4a4fe0c-fc7e-45bf-b38a-ed7bbc6f141f",
       tenantId: "63ac9535-d357-40cf-9d8a-9d6a76a4e81f"
     },
     exampleRelationId: "19e4e026-b873-4bc2-b3f4-c024fe721182"
   }
 })
 2023-12-01T19:30:59.778Z prisma:client  Generated request:
 2023-12-01T19:30:59.778Z prisma:client  {
   "modelName": "Example",
   "action": "findUnique",
   "query": {
     "arguments": {
       "where": {
         "tenantId_id": {
           "id": "f4a4fe0c-fc7e-45bf-b38a-ed7bbc6f141f",
           "tenantId": "63ac9535-d357-40cf-9d8a-9d6a76a4e81f"
         },
         "exampleRelationId": "19e4e026-b873-4bc2-b3f4-c024fe721182"
       }
     },
     "selection": {
       "$composites": true,
       "$scalars": true
     }
   }
 }

 2023-12-01T19:30:59.778Z prisma:client:libraryEngine  requestBatch
 prisma:query SELECT
	"public"."Example"."tenantId",
	"public"."Example"."id",
	"public"."Example"."exampleRelationId",
	"public"."Example"."field",
	"public"."Example"."otherField"
FROM
	"public"."Example"
WHERE (("public"."Example"."id" = $1
		AND "public"."Example"."tenantId" = $2
		AND "public"."Example"."exampleRelationId" = $3)
	OR ("public"."Example"."id" = $4
		AND "public"."Example"."tenantId" = $5
		AND "public"."Example"."exampleRelationId" = $6)) OFFSET $7

 Query: SELECT
	"public"."Example"."tenantId",
	"public"."Example"."id",
	"public"."Example"."exampleRelationId",
	"public"."Example"."field",
	"public"."Example"."otherField"
FROM
	"public"."Example"
WHERE (("public"."Example"."id" = $1
		AND "public"."Example"."tenantId" = $2
		AND "public"."Example"."exampleRelationId" = $3)
	OR ("public"."Example"."id" = $4
		AND "public"."Example"."tenantId" = $5
		AND "public"."Example"."exampleRelationId" = $6)) OFFSET $7
 Params: ["8066c9dc-1e4e-4651-ad51-57d0e3a7735d","63ac9535-d357-40cf-9d8a-9d6a76a4e81f","f1684f9b-701a-4edb-9a89-3daac5c7fd0d","f4a4fe0c-fc7e-45bf-b38a-ed7bbc6f141f","63ac9535-d357-40cf-9d8a-9d6a76a4e81f","19e4e026-b873-4bc2-b3f4-c024fe721182",0]
```