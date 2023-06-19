FROM alpine:3.17.3

RUN apk update && apk upgrade
RUN apk add php php-fpm
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar\
	&& chmod +x wp-cli.phar
RUN wget https://wordpress.org/latest.tar.gz\
	&& tar -xvf latest.tar.gz\
	&& rm latest.tar.gz
RUN mkdir -p /var/www/html
RUN mv wordpress/* /var/www/html/ && rmdir wordpress
COPY tools/php-fpm.conf /etc/php81/php-fpm.d/www.conf
ENTRYPOINT /usr/sbin/php-fpm81 -F
