FROM alpine:3

LABEL maintainer="noclin"

ENV GOST_VER=3.0.0-rc10

WORKDIR /app

RUN wget https://github.com/go-gost/gost/releases/download/v${GOST_VER}/gost_${GOST_VER}_linux_amd64.tar.gz && \
    tar -zxvf gost*.tar.gz && \
    rm gost*.tar.gz
