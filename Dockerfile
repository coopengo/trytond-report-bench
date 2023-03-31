from alpine:3.14

RUN apk add --no-cache bash libreoffice

COPY . /root

WORKDIR /root

ENTRYPOINT ["/root/oo"]
