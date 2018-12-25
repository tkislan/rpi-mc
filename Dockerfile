FROM armhf/alpine:latest
WORKDIR /root/
RUN apk add --update curl ca-certificates &&  \
  curl -o /tmp/mc https://dl.minio.io/client/mc/release/linux-arm/mc && \
  mv /tmp/mc /usr/bin/

RUN chmod +x /usr/bin/mc

CMD ["/usr/bin/mc"]
