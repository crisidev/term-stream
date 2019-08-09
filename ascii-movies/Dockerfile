FROM crisidev/gotty:linux-arm as builder
FROM arm32v7/python:3.6-alpine3.10

RUN mkdir /app
WORKDIR /app
COPY . /app
COPY --from=builder /go/bin/gotty /bin

EXPOSE 8080

CMD [ "/app/entrypoint.sh" ]
