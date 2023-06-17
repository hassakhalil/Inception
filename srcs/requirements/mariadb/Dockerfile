FROM alpine:3.15

# Install MariaDB and dependencies
RUN apk update && \
    apk add --no-cache mariadb mariadb-client

# Copy the MariaDB configuration file
COPY ./conf/my.cnf /etc/mysql/my.cnf

# Create the database directory
RUN mkdir -p /var/lib/mysql/
#creating a folder for unix socket
RUN mkdir -p /var/run/mysqld/
RUN chown mysql:mysql  /var/run/mysqld/ && chmod 777 /var/run/mysqld/

# Set the ownership and permissions
RUN chown -R mysql:mysql /var/lib/mysql

# Initialize the MariaDB database
RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql

EXPOSE 3306

# Start MariaDB service
CMD ["mysqld"]