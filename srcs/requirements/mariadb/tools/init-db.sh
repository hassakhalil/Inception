#!/bin/bash
set -e

# Wait for the MySQL service to start
until mysqladmin ping -h db -u root -pexample >/dev/null 2>&1; do
    echo "Waiting for MySQL service to start..."
    sleep 1
done

# Create the database
mysql -h db -u root -pexample -e "CREATE DATABASE wordpress;"

# Create the user and grant privileges
mysql -h db -u root -pexample -e "CREATE USER 'wordpress'@'%' IDENTIFIED BY 'password';"
mysql -h db -u root -pexample -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'%';"
mysql -h db -u root -pexample -e "FLUSH PRIVILEGES;"