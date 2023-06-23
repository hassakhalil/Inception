#!/bin/bash
set -e

# Wait for the MySQL service to start
until mysqladmin ping -h db -u root -pexample >/dev/null 2>&1; do
    echo "Waiting for MySQL service to start..."
    sleep 1
done

# Set root password
mysql -h db -u root -p"${MYSQL_ROOT_PASSWORD}" -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"

# Set mysql user password
mysql -h db -u root -p"${MYSQL_ROOT_PASSWORD}" -e "ALTER USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"

# Create the database
mysql -h db -u root -p"${MYSQL_ROOT_PASSWORD}" -e "CREATE DATABASE wordpress;"

# Create the user and grant privileges
mysql -h db -u root -p"${MYSQL_ROOT_PASSWORD}" -e "CREATE USER 'wordpress'@'%' IDENTIFIED BY 'password';"
mysql -h db -u root -p"${MYSQL_ROOT_PASSWORD}" -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'%';"
mysql -h db -u root -p"${MYSQL_ROOT_PASSWORD}" -e "FLUSH PRIVILEGES;"

# Stop the MariaDB service
mysqladmin shutdown

# # Start MariaDB in the foreground
# exec /usr/bin/mysqld_safe --bind-address=0.0.0.0
echo "Database initialization complete!"