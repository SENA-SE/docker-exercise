FROM golang:1.16 as builder

WORKDIR /usr/src/app

COPY . .

EXPOSE 8080

RUN go build -o server

RUN adduser appuser

USER appuser

CMD ["./server"]
