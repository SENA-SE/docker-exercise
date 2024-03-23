FROM golang:1.16 as builder

WORKDIR /usr/src/app

COPY . .

EXPOSE 8080

RUN go build

RUN go test ./...

CMD ["./server"]
