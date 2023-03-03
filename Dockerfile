FROM alpine:latest
WORKDIR /app
RUN apk update && apk add --no-cache wget curl ca-certificates
RUN wget https://github.com/slackhq/nebula/releases/latest/download/nebula-linux-amd64.tar.gz && tar xvfp * -C /usr/local/bin/ && rm *.tar.gz
ENTRYPOINT [ "/usr/local/bin/nebula" ]
CMD ["-config", "/app/config.yaml"]