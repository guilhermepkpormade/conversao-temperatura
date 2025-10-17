FROM node:20.9.0-alpine3.18

WORKDIR /app

COPY ./src/package*.json ./
RUN npm install

COPY ./src .

EXPOSE 8080

CMD ["node", "server.js"]