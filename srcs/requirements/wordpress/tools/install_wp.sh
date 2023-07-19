#!/bin/bash
apt update && apt install php php-fpm php-mysql curl mariadb-client -y
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar &&  mv wp-cli.phar /usr/local/bin/wp

sed -i 's/listen = .*/listen = 0.0.0.0:9000/' /etc/php/7.3/fpm/pool.d/www.conf

mkdir -p /run/php
mkdir -p /var/www/html/
cd /var/www/html/

sleep 10

wp core download --allow-root
wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASS --dbhost=mariadb --allow-root
wp core install --url=$URL --title="$TITLE" --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PASS --admin_email=$WP_ADMIN_EMAIL --allow-root
wp user create $WP_USER $WP_EMAIL --role=author --user_pass=$WP_PASS --allow-root

php-fpm7.3 -F
