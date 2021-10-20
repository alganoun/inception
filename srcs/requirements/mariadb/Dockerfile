FROM debian:buster

MAINTAINER YanYan, yanyan@hexanyn.fr

RUN apt update;apt install -y mariadb-server

CMD mysqld_safe && tail -f /dev/null

EXPOSE 3306
