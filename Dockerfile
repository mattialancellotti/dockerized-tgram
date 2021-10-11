FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add telegram-desktop

RUN adduser -D -h /home/tgram -s /bin/bash tgram
USER tgram

CMD ["/usr/bin/telegram-desktop"]
