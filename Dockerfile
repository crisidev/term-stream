FROM golang:1.12-alpine3.10

ENV GOPATH=/go
RUN apk update && apk add git gcc libc-dev && go get github.com/yudai/gotty && go install github.com/yudai/gotty
