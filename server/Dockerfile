FROM node:20.10-alpine3.17

RUN mkdir -p /app
WORKDIR /app

ADD package.json package-lock.json ./
RUN npm install

COPY . . 

RUN npx prisma generate

ADD . .

CMD ["npm", "start"]
