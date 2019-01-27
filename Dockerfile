FROM alpine:latest

RUN apk update \
 && apk add xz \
 && rm -rf /var/cache/apk/*

COPY . /app
CMD /app/xzbench.sh
