#FROM arm32v7/python:3.6-alpine3.10
FROM crisidev/gotty as builder
FROM python:3.7-alpine

RUN mkdir /app
WORKDIR /app
COPY . /app
COPY --from=builder /go/bin/gotty /bin

EXPOSE 8080

CMD [ "/app/entrypoint.sh" ]
