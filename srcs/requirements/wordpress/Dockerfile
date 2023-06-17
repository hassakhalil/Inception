FROM alpine:3.15

# Update package repositories
RUN apk update && apk upgrade

# Install necessary packages (PHP, MySQL, Nginx)
RUN apk add wget mariadb-client php7 php7-fpm php7-opcache php7-common php7-session php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom php7-simplexml

# Copy Nginx configuration
# COPY nginx.conf /etc/nginx/nginx.conf

# Configure PHP-FPM
RUN sed -i 's/user = nobody/user = nginx/' /etc/php7/php-fpm.d/www.conf && \
    sed -i 's/group = nobody/group = nginx/' /etc/php7/php-fpm.d/www.conf && \
    sed -i 's/;listen.owner = nobody/listen.owner = nginx/' /etc/php7/php-fpm.d/www.conf && \
    sed -i 's/;listen.group = nobody/listen.group = nginx/' /etc/php7/php-fpm.d/www.conf && \
    sed -i 's/;listen.mode = 0660/listen.mode = 0666/' /etc/php7/php-fpm.d/www.conf


# Set up a directory for WordPress files
RUN mkdir -p /var/www/html
# WORKDIR /var/www/html


#Download the latest Wordpress source files & Unpack the archive and delete it afterwards
RUN wget http://wordpress.org/latest.tar.gz && tar -xzvf latest.tar.gz && rm latest.tar.gz

# Copy WordPress files
RUN mv wordpress/* /var/www/html/

# Set ownership and permissions
# RUN chown nginx:nginx /var/www/html && chmod 777 /var/www/html

# Start Nginx and PHP-FPM services
EXPOSE 9000

CMD ["php-fpm"]