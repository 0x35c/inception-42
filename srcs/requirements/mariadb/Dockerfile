FROM alpine:3.17.3

RUN apk add mariadb
RUN mkdir -p /run/mysqld
RUN mkdir -p /var/lib/mysql
RUN mariadb-install-db --user=root --datadir=/var/lib/mysql --skip-test-db
COPY tools/setup.sh .
ENTRYPOINT sh setup.sh
