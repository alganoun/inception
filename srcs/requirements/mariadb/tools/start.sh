#!/bin/sh
service mysql start
mysql -u root < tools/script.sql

#mysql -u root --password=$MYSQL_ROOT_PASSWORD $MYSQL_DATABASE < tools/wordpressdb.sql

#mysql_secure_installation <<EOF
#$MYSQL_ROOT_PASSWORD
#n
#y
#$MYSQL_ROOT_PASSWORD
#$MYSQL_ROOT_PASSWORD
#y
#y
#y
#y
#EOF
