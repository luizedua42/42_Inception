#!/bin/bash

service mysql start
mysql -e "CREATE DATABASE IF NOT EXISTS \`myFirstDB\`;"
mysql -e "CREATE USER IF NOT EXISTS 'luizedua'@'localhost INDENTIFIED BY 'luizedua42';"
mysql -e "GRANT ALL PRIVILEGES ON \`myFirstDB\`.* TO 'luizedua'@'localhost';"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '123';"
mysql -e "FLUSH ALL PRIVILEGES;"
mysqladmin -u root -p 123 shutdown
exec mysqld_safe