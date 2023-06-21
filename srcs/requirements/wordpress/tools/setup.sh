wp config create --dbhost=mariadb --dbname=${MYSQL_DATABASE}\
	--dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD}

wp core install --url=${DOMAIN_NAME} --title="My website"\
	--admin_user=${WP_ADMIN} --admin_password=${WP_ADMIN_PWD}\
	--admin_email=${WP_ADMIN_EMAIL} --skip-email --allow-root

wp user create ${WP_USER} ${WP_USER_EMAIL} --user_pass=${WP_USER_PWD}

/usr/sbin/php-fpm81 -F
