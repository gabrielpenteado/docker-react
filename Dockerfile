FROM node:lts-bullseye-slim

WORKDIR /temp

COPY . .

RUN npm install

RUN npm run build

RUN mkdir -p /app

RUN mv dist/* /app

VOLUME /app

WORKDIR /

RUN rm -rf /temp

WORKDIR /app

EXPOSE 8080









