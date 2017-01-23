FROM alpine:3.5
EXPOSE 10000

RUN apk add --update openssh-client \
 && adduser -Dh /app app

USER app
WORKDIR /app

COPY docker-entrypoint.sh /app/docker-entrypoint.sh

CMD /app/docker-entrypoint.sh
