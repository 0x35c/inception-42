#!bin/sh

sed -i "s/{MYSQL_DATABASE}/${MYSQL_DATABASE}/g" init.sql
sed -i "s/{MYSQL_USER}/${MYSQL_USER}/g" init.sql
sed -i "s/{MYSQL_PASSWORD}/${MYSQL_PASSWORD}/g" init.sql
sed -i "s/{MYSQL_ROOT_PASSWORD}/${MYSQL_ROOT_PASSWORD}/g" init.sql

exec /usr/bin/mariadbd --no-defaults --user=root --datadir=/var/lib/mysql --init-file=init.sql
