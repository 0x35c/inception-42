wp core config --dbhost=${MYSQL_DATABASE} --dbname=${MYSQL_DATABASE}\
	--dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD}
chmod 600 wp-config.php

/usr/sbin/php-fpm81 -F
