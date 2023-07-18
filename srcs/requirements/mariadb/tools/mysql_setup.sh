#!/bin/bash

# Start MySQL service
service mysql start

# MySQL commands
mysql -u root -e  "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
mysql -u root -e  "CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';"
mysql -u root -e  "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';"
mysql -u root -e  "FLUSH PRIVILEGES;"

# Stop MySQL service
service mysql stop

mysqld

#   "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
#  mysql -u root -e "CREATE  USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';"
#  mysql -u root  -e  "GRANT ALL PRIVILEGES ON  *.* TO '$DB_USER'@'%';"
