FROM alpine:3.17.3

RUN apk add mariadb
RUN /etc/init.d/mariadb setup
ENTRYPOINT sh tools/setup.sh
