FROM alpine:3.15

# Install MariaDB and dependencies & install rc-service
RUN apk update && apk add --no-cache mysql mysql-client openrc

#Initialize the MariaDB data directory
RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql

#reate a directory inside your container to store the SQL script
RUN mkdir /docker-entrypoint-initdb.d

#Copy the SQL script file into the container:
COPY ./tools/init.sql /docker-entrypoint-initdb.d/

#Configure the MySQL/MariaDB container to execute all SQL scripts in the /docker-entrypoint-initdb.d directory during startup. This can be done by setting the MYSQL_INITDB_DIR environment variable to /docker-entrypoint-initdb.d
ENV MYSQL_INITDB_DIR=/docker-entrypoint-initdb.d

# Create the directory for the socket file
RUN mkdir -p /var/run/mysqld

# Adjust ownership and permissions
RUN chown -R mysql:mysql /var/run/mysqld && chmod 777 /var/run/mysqld

#copy config file inside the container
COPY ./conf/my.cnf /etc/my.cnf
RUN chown -R mysql:mysql /etc/my.cnf && chmod 777 /etc/my.cnf
#modify the mariadb server config to Allow server to accept connections on all interfaces.
COPY ./conf/my.cnf.d /etc/my.cnf.d
# Switch to the non-root user
USER mysql

EXPOSE 3306



# Start MariaDB service
CMD ["mysqld"]