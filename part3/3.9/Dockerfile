FROM golang:1.16 as builder-stage

RUN apk add git

WORKDIR /usr/src/app

COPY . .


RUN go build -o server && \
adduser appuser && \
chown appuser .

FROM scratch

WORKDIR /usr/src/app

EXPOSE 8080

COPY --from=build-stage /usr/src/app/server /usr/src/app/server

USER appuser

CMD ["./server"]
