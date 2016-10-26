from alpine:3.4

RUN apk add --no-cache libreoffice

COPY . /root

WORKDIR /root

ENTRYPOINT ["/root/oo"]
