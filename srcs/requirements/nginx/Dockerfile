FROM debian:buster

RUN apt update && apt install nginx openssl -y

COPY ./conf/conf /etc/nginx/sites-enabled/conf
COPY ./tools/start_nginx.sh .
RUN chmod +x start_nginx.sh

ARG URL=$URL
ARG WP_ADMIN_EMAIL=$WP_ADMIN_EMAIL

#add sleep to nginx to avoid this mess
CMD ["/start_nginx.sh"]
