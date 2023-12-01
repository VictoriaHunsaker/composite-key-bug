import express, { Express, Request, Response } from "express";
import cors from "cors";
import { PrismaClient } from "@prisma/client";

const port = process.env.PORT || 9099;

const tenantId = '63ac9535-d357-40cf-9d8a-9d6a76a4e81f';
const exampleIds = [
  '55d0ac05-7961-4fe6-999d-c0dc7ea84b66',
  '42e42d73-bc3f-4869-a6b3-ad7b4211488f',
  '8066c9dc-1e4e-4651-ad51-57d0e3a7735d',
  'f4a4fe0c-fc7e-45bf-b38a-ed7bbc6f141f',
]
const exampleRelationIds = ['f1684f9b-701a-4edb-9a89-3daac5c7fd0d', '19e4e026-b873-4bc2-b3f4-c024fe721182'];

export const app: Express = express();
app.use(express.json());
app.use(cors());

app.get(
  "/example",
  async (_req: Request, res: Response) => {
    const prisma = new PrismaClient();
    
  // @ts-ignore
  prisma.$on('query', e => {
    // @ts-ignore
    console.log("Query: " + e.query);
    // @ts-ignore
    console.log("Params: " + e.params);
  });
  
  // Running these as a batch adds an extraneous "OR tenantId" to the query,
  // which we believe is pulling all the example records into memory
  console.log("-----------------------------------");
  console.log("Invalid query output");
  console.log("-----------------------------------");
  await Promise.all([
    prisma.example.findUnique({
      where: {
        tenantId_id: {
          id: exampleIds[0],
          tenantId,
        },
        tenantId,
      }
    }),
    prisma.example.findUnique({
      where: {
        tenantId_id: {
          id: exampleIds[1],
          tenantId,
        },
        tenantId,
      }
    }),
  ]);
    
  console.log("-----------------------------------");
  console.log("Valid query output");
  console.log("-----------------------------------");
  await Promise.all([
    prisma.example.findUnique({
      where: {
        tenantId_id: {
          id: exampleIds[2],
          tenantId,
        },
        exampleRelationId: exampleRelationIds[0],
      }
    }),
    prisma.example.findUnique({
      where: {
        tenantId_id: {
          id: exampleIds[3],
          tenantId,
        },
        exampleRelationId: exampleRelationIds[1],
      }
    }),
  ]);

  res.send({ message: "Done, check the server logs for raw SQL" });
});

app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}`);
});