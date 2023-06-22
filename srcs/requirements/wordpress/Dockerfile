FROM alpine:3.15

RUN apk add --no-cache php7 php7-cli php7-json php7-phar php7-mbstring php7-openssl php7-curl mysql-client
RUN wget -O /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x /usr/local/bin/wp
RUN ln -s /usr/local/bin/wp /usr/bin/wp

WORKDIR /var/www/html
EXPOSE 9000

# Download and configure WordPress
RUN wp core download  --allow-root
# RUN wp config create --dbname=wordpress --dbuser=wordpress --dbpass=wordpress   --dbhost=mariadb --allow-root
# RUN wp core install --url=http://localhost --title="My WordPress Site" --admin_user=admin --admin_password=password --admin_email=admin@example.com --allow-root
#debug
CMD [ "tail","-f"]
#end debuf
# CMD ["php", "-S", "0.0.0.0:9000", "-t", "/var/www/html"]