CREATE DATABASE wordpress;
CREATE USER 'alganoun'@'%' IDENTIFIED BY 'alganoun';
GRANT ALL PRIVILEGES ON *.* TO 'alganoun'@'%';
FLUSH PRIVILEGES;
exit
