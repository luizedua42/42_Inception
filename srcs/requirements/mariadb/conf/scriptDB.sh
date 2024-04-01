#!/bin/bash

service mariadb start
mariadb -e "CREATE DATABASE IF NOT EXISTS myFirstDB;"
mariadb -e "CREATE USER IF NOT EXISTS 'luizedua'@'%' IDENTIFIED BY '123';"
mariadb -e "GRANT ALL PRIVILEGES ON myFirstDB.* TO 'luizedua'@'%';"
mariadb -e "FLUSH PRIVILEGES;"

exec mysqld_safe