#!/bin/sh
if [ ! -d "/tmp/ok" ]; then
	mysql_install_db
    service mysql start
    mysql -u root -e "ALTER USER root@localhost IDENTIFIED WITH mysql_native_password;"
	mysql -u root -e "ALTER USER root@localhost IDENTIFIED BY '$ROOT_PASSWORD';"
	mysql -u root -p${ROOT_PASSWORD} -e "CREATE USER '$DB_USER'@'localhost' identified by '$DB_PASSWORD';" &&\
	mysql -u root -p${ROOT_PASSWORD} -e "CREATE DATABASE wordpress;" &&\
	mysql -u root -p${ROOT_PASSWORD} -e "GRANT ALL PRIVILEGES ON *.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';" &&\
	mysql -u root -p${ROOT_PASSWORD} -e "FLUSH PRIVILEGES;"
	mkdir /tmp/ok

fi

mysqld