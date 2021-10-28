FROM debian:buster

ARG MYSQL_USER
ARG MYSQL_PASSWORD

# Install dependencies
RUN apt-get update
RUN	apt-get install -y mariadb-server && apt-get install -y mariadb-client

COPY tools/ /tools/
COPY conf/ /etc/mysql/mariadb.conf.d/

RUN ./tools/start.sh
EXPOSE 3306

CMD	"./tools/run.sh"
