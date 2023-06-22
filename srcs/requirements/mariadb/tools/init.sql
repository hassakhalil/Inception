CREATE DATABASE wordpress;
CREATE USER 'wordpress'@'localhost' IDENTIFIED BY 'wordpress';
GRANT ALL PRIVILEGES ON your_database_name.* TO 'wordpress'@'localhost';
FLUSH PRIVILEGES;