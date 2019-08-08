FROM crisidev/gotty as builder
#FROM arm32v7/node:12-buster-slim
FROM node:12-alpine

CMD npm install -g mapscii
COPY entrypoint.sh /entrypoint.sh
COPY --from=builder /go/bin/gotty /usr/bin/gotty

EXPOSE 8080

CMD [ "/entrypoint.sh" ]
