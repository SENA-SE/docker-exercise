FROM node:16-alpine as build

WORKDIR /usr/src/app

COPY . .

# Environment variable to define the backend URL
ENV REACT_APP_BACKEND_URL=http://localhost/api

RUN npm install
RUN npm run build

EXPOSE 5000

RUN npm install -g serve

CMD ["serve", "-s", "-l", "5000", "build"]
