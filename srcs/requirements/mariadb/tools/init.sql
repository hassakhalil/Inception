CREATE DATABASE wordpress;
CREATE USER 'wordpress'@'wordpress.srcs_mynetwork' IDENTIFIED BY 'wordpress';
GRANT ALL ON *.* TO 'wordpress'@'wordpress.srcs_mynetwork' IDENTIFIED BY 'wordpress';
FLUSH PRIVILEGES;