FROM node:16-alpine

EXPOSE 8080

RUN apk add git

RUN git clone https://github.com/SENA-SE/simple-backend.git

WORKDIR /simple-backend

RUN npm install

CMD ["npm", "start"]