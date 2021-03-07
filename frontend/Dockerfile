FROM node:14.16.0

WORKDIR /app

COPY package.json .
COPY yarn.lock .
RUN yarn install

ENV HOST=0.0.0.0
