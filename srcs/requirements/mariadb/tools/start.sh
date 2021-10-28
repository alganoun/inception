#!/bin/sh
mysql_install_db
service mysql start
mysql -u root < tools/script.sql

