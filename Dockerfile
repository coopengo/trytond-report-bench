from alpine:3.11.10

RUN apk add --no-cache bash libreoffice

COPY . /root

WORKDIR /root

ENTRYPOINT ["/root/oo"]
