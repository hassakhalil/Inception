FROM debian:buster

RUN apt update && apt install nginx openssl -y

COPY ./conf/conf /etc/nginx/sites-enabled/conf
COPY ./tools/start_nginx.sh .
RUN chmod +x start_nginx.sh

CMD ["/start_nginx.sh"]
