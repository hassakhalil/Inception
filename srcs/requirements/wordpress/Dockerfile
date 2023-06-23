FROM alpine:3.15

RUN apk add --no-cache php7 php7-cli php7-json php7-phar php7-mbstring php7-openssl php7-curl mysql-client
RUN apk add --no-cache curl && \
    curl -o /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x /usr/local/bin/wp

# WORKDIR /var/www/html
EXPOSE 9000

#configure WordPress to connect to the database in the other container
# RUN wp config set --dbname=wordpress --dbuser=wordpress --dbpass=wordpress --dbhost=mariadb --allow-root
#use WP-CLI to install WordPress
# RUN wp core install --url=http://localhost --title="My WordPress Site" --admin_user=admin_username --admin_password=admin_password --admin_email=hsnkhalil78@gmail.com --allow-root
#debug
CMD [ "tail","-f"]
#end debuf
# CMD ["php", "-S", "0.0.0.0:9000", "-t", "/var/www/html"]