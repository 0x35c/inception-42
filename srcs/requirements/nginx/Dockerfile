FROM alpine:3.17.3
EXPOSE 443:443
RUN apk add nginx && apk add openssl
COPY conf/default.conf /etc/nginx/http.d/default.conf
COPY tools/certificate.sh .
ENTRYPOINT sh certificate.sh
