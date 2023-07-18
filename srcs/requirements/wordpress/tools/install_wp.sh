#!/bin/bash
sleep 5
sed -i 's/listen = .*/listen = 0.0.0.0:9000/' /etc/php/7.3/fpm/pool.d/www.conf

mkdir -p /run/php
mkdir -p /var/www/html/
cd /var/www/html/

wp core download --allow-root
wp config create --dbname=wordpress --dbuser=myuser --dbpass=mypassword --dbhost=mariadb --allow-root
wp core install --url=68.183.254.151 --title="inception" --admin_user=admin_username --admin_password=admin_password --admin_email=hsnkhalil78@gmail.com --allow-root


php-fpm7.3 -F
