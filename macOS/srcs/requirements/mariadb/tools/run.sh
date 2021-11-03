#!/bin/sh
if [ ! -d "/tmp/ok" ]; then
	mysql_install_db
    service mysql start
    mysql -e "CREATE USER '$DB_USER'@'localhost' identified by '$DB_PASSWORD';" &&\
	mysql -e "CREATE DATABASE wordpress;" &&\
	mysql -e "GRANT ALL PRIVILEGES ON *.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';" &&\
	mysql -e "FLUSH PRIVILEGES;"
	mkdir /tmp/ok

fi

sleep infinity && wait