CREATE DATABASE wordpress;
CREATE DATABASE phpfpm;
CREATE USER 'alganoun'@'localhost' IDENTIFIED BY 'correction';
GRANT ALL PRIVILEGES ON *.* TO 'alganoun'@'localhost';
FLUSH PRIVILEGES;
exit
