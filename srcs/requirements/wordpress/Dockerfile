FROM alpine:3.17.3
RUN mkdir -p /var/www/html
WORKDIR /var/www/html
RUN apk add php php-fpm php-mysqli mysql-client php-phar php-cgi php-fileinfo\
			php-json php-curl php-dom php-iconv php-session php-exif php-mbstring\
			php-openssl php-xml php-tokenizer
# php-pdo_sqlite php-pear php-ftp php-imap php-mysqli php-json php-mbstring php-soap php-sockets php-bcmath php-opcache php-dom php-zlib php-gettext php-fpm php-intl php-openssl php-session php-pdo_mysql php-embed php-dba php-ldap php-xsl php-exif php-pdo_dblib php-bz2 php-pdo php-pspell php-sysvmsg php-gmp php-apache2 php-pdo_odbc php-shmop php-ctype php-phpdbg php-enchant php-sysvsem php-sqlite3 php-odbc php-pcntl php-calendar php-xmlreader php-snmp php-zip php-posix php-iconv php-curl php-gd php-xml php-cgi php-sysvshm php-pgsql php-tidy php-pdo_pgsql php-phar php-mysqlnd
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar\
	&& chmod +x wp-cli.phar && mv wp-cli.phar /usr/bin/wp
RUN wget https://wordpress.org/latest.tar.gz\
	&& tar -xvf latest.tar.gz > /dev/null\
	&& rm latest.tar.gz
RUN mv wordpress/* . && rmdir wordpress
COPY tools/php-fpm.conf /etc/php81/php-fpm.d/www.conf
COPY tools/setup.sh /
ENTRYPOINT sh /setup.sh
