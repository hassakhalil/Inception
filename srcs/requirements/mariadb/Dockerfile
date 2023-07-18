FROM debian:buster

# Install MariaDB  
RUN apt update && apt install mariadb-server -y
 
RUN sed -i "s/.*bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306

COPY ./tools/mysql_setup.sh .
RUN chmod +x mysql_setup.sh


# RUN /mysql_setup.sh
# CMD ["mysqld"]
CMD ["/mysql_setup.sh"]


