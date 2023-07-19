#!/bin/bash

apt update && apt install -y php php-mysql wget
wget https://www.adminer.org/latest.php -O /home/adminer.php

sleep 10
php -S 0.0.0.0:8080 /home/adminer.php