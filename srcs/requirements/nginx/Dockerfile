FROM alpine:3.17.3
EXPOSE 443:443
RUN apk update
RUN apk add nginx
COPY conf/default.conf /etc/nginx/http.d/default.conf
COPY tools/index.html /var/www/html/index.html
COPY tools/certificate.sh .
RUN apk add openssl
CMD ["sh", "certificate.sh"]
