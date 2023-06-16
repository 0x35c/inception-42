FROM alpine:1.17.3

RUN apk update && apk upgrade
RUN apk add php8 php8-fpm php8-opcache
RUN apk add php8-gd php8-zlib php8-curl

RUN mkdir /var/run/php

