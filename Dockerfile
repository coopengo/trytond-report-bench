from alpine:3.12.8

RUN apk add --no-cache bash libreoffice

COPY . /root

WORKDIR /root

ENTRYPOINT ["/root/oo"]
