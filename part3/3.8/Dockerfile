FROM node:16-alpine as build-stage

WORKDIR /usr/src/app

COPY . .

RUN npm install && \
npm run build

FROM node:16-alpine 

WORKDIR /usr/src/app

COPY --from=build-stage /usr/src/app/build /usr/src/app/build

npm install -g serve && \
adduser -S appuser && \
chown appuser .

USER appuser

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]
