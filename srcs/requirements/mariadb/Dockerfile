FROM debian:buster

# Install MariaDB  
RUN apt update && apt install mariadb-server -y
 
RUN sed -i "s/.*bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/mysql_setup.sh .
RUN chmod +x mysql_setup.sh
# RUN ./mysql_setup.sh

# Switch to the non-root user
# USER mysql

EXPOSE 3306

# CMD ["mysqld"]

CMD ["tail", "-f"]