FROM debian:buster

# Install MariaDB  
RUN apt update && apt install mariadb-server -y
 
RUN sed -i "s/.*bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/mysql_setup.sh .
RUN chmod +x mysql_setup.sh

CMD ["/mysql_setup.sh"]


