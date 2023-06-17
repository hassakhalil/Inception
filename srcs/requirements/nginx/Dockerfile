FROM alpine:3.15

RUN apk update && apk upgrade && apk add nginx
COPY ./conf/nginx.conf /etc/nginx/nginx.conf
# COPY ./html /usr/share/nginx/html
EXPOSE 443 
CMD ["nginx", "-g", "daemon off;"]