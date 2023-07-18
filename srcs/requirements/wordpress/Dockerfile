FROM debian:buster

RUN apt update && apt install php php-fpm php-mysql curl mariadb-client -y 
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar &&  mv wp-cli.phar /usr/local/bin/wp

EXPOSE 9000

COPY ./tools/install_wp.sh .
RUN chmod +x install_wp.sh

CMD [ "./install_wp.sh"]
