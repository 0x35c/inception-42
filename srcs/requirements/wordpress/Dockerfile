FROM alpine:3.17.3
RUN mkdir -p /var/www/html
WORKDIR /var/www/html
RUN apk add php php-fpm php-mysqli mariadb-client
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar\
	&& chmod +x wp-cli.phar
RUN wget https://wordpress.org/latest.tar.gz\
	&& tar -xvf latest.tar.gz\
	&& rm latest.tar.gz
RUN mv wordpress/* . && rmdir wordpress
COPY tools/php-fpm.conf /etc/php81/php-fpm.d/www.conf
COPY tools/setup.sh /
ENTRYPOINT sh /setup.sh
