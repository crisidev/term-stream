FROM arm32v7/golang:1.12.7-alpine as builder

ENV GOPATH=/go
RUN apk update && apk add git gcc libc-dev && go get github.com/yudai/gotty && go install github.com/yudai/gotty

FROM node:12-alpine

RUN apk update && apk add python curl && npm install -g mapscii && mkdir /movies
COPY ./ascii-movies /ascii-movies
COPY ./entrypoint.sh /entrypoint.sh
COPY --from=builder /go/bin/gotty /usr/bin/gotty

EXPOSE 8080
EXPOSE 23

ENTRYPOINT [ "/entrypoint.sh" ]
