FROM node:16-alpine as builder
WORKDIR /
COPY package*.json ./
RUN npm install
COPY tsconfig.json ./
COPY src src
RUN npm run build

FROM node:16-alpine
WORKDIR /app
COPY --from=builder /build build
EXPOSE 3000
ENTRYPOINT [ "node" ]
CMD [ "build/src/main/index.js" ]
