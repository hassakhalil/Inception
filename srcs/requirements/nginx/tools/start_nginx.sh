#!/bin/bash

mv /etc/nginx/sites-enabled/conf /etc/nginx/sites-enabled/default
mkdir /etc/nginx/ssl/
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/ssl.key -out /etc/nginx/ssl/ssl.crt -subj "/C=US/ST=California/L=San Francisco/O=Example Company/OU=IT/CN=$URL/emailAddress=$WP_ADMIN_EMAIL"

sleep 10

nginx -g 'daemon off;'