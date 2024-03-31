FROM node:16-alpine as build

WORKDIR /usr/src/app

COPY . .

RUN npm install && \
npm run build && \
npm install -g serve && \
adduser -S appuser && \
chown appuser .

USER appuser

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]
