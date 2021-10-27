#!/bin/sh
/etc/init.d/mariadb setup
service mariadb start
service mysql start
mysql -u root < tools/script.sql

