#!/bin/sh
mysql_install_db
service mysql start
mysql -e "CREATE DATABASE $DB_NAME;"
mysql -e "CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO '$DB_USER'@'%';"
mysql -e "FLUSH PRIVILEGES;"
service mysql start
sleep infinity && wait 