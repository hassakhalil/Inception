FROM debian:buster

RUN apt update && apt install nginx openssl -y

COPY ./conf/conf /etc/nginx/sites-enabled

RUN mv /etc/nginx/sites-enabled/conf /etc/nginx/sites-enabled/default

# EXPOSE 443 
RUN mkdir /etc/nginx/ssl/

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/ssl.key -out /etc/nginx/ssl/ssl.crt -subj "/C=US/ST=California/L=San Francisco/O=Example Company/OU=IT/CN=hkhalil.42.fr/emailAddress=admin@example.com"

CMD ["nginx", "-g", "daemon off;"]
