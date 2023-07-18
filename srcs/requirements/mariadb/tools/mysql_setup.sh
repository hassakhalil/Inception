#!/bin/bash

# Start MySQL service
service mysql start

sleep 5

# MySQL commands
mysql <<EOF
CREATE DATABASE wordpress;
CREATE USER 'myuser'@'%' IDENTIFIED BY 'mypassword';
GRANT ALL PRIVILEGES ON wordpress.* TO 'myuser'@'%';
FLUSH PRIVILEGES;
EOF

# Stop MySQL service
service mysql stop