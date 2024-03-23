FROM golang:1.16 as builder

WORKDIR /usr/src/app

COPY . .

EXPOSE 8080

ENV REQUEST_ORIGIN=http://localhost:5000

RUN go build -o server

CMD ["./server"]
