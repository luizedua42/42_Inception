#! /bin/bash
# rm -rf /var/www/wordpress/wp-config.php
# touch /var/www/wordpress/wp-config.php
# wp config create	--allow-root \
# 	--dbname=$SQL_DATABASE \
# 	--dbuser=$SQL_USER \
# 	--dbpass=$SQL_PASSWORD \
# 	--dbhost=mariadb:3306 --path='/var/www/wordpress'
# php-fpm -F


wp core install --allow-root \
	--path=/var/www/wordpress \
	--title="Inception" \
	--url=$DOMAIN_NAME \
	--admin_user=$WP_ROOT_USER \
	--admin_password=$WP_ROOT_PASSWORD \
	--admin_email=$WP_ROOT_EMAIL

wp user create --allow-root	\
	--path=/var/www/wordpress \
	"$WP_USER" "$WP_EMAIL" \
	--user_pass=$WP_PASSWORD \
	--role='author'

exec php-fpm -F