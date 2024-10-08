FROM node:20-alpine

EXPOSE 3000

WORKDIR /app

COPY ./package.json ./

COPY ./yarn.lock ./

RUN yarn install --frozen-lockfile

COPY ./ ./

CMD yarn start

