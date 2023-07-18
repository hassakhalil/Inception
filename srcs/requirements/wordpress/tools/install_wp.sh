#!/bin/bash
sed -i 's/listen = .*/listen = 0.0.0.0:9000/' /etc/php/7.3/fpm/pool.d/www.conf

mkdir -p /run/php
mkdir -p /var/www/html/
cd /var/www/html/

wp core download --allow-root
wp config create --dbname=wordpress --dbuser=myuser --dbpass=mypassword --dbhost=mariadb --allow-root
wp core install --url=http://localhost --title="inception" --admin_user=admin_username --admin_password=admin_password --admin_email=hsnkhalil78@gmail.com --allow-root

cd /var/www/html/
php-fpm7.3 -F