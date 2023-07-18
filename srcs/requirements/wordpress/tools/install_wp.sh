#!/bin/bash
sleep 12
sed -i 's/listen = .*/listen = 0.0.0.0:9000/' /etc/php/7.3/fpm/pool.d/www.conf

mkdir -p /run/php
mkdir -p /var/www/html/
cd /var/www/html/

wp core download --allow-root
wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASS --dbhost=mariadb --allow-root
wp core install --url=$URL --title="inception" --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PASS --admin_email=$WP_ADMIN_EMAIL --allow-root

php-fpm7.3 -F
