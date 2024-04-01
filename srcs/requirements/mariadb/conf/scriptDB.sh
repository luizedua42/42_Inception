#!/bin/bash

service mariadb start
mariadb -u root -e \
"CREATE DATABASE IF NOT EXISTS myFirstDB; \
CREATE USER IF NOT EXISTS 'luizedua'@'%' IDENTIFIED BY '123'; \
GRANT ALL PRIVILEGES ON myFirstDB.* TO 'luizedua'@'%'; \
FLUSH PRIVILEGES;"