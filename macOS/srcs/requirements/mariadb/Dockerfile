FROM debian:buster

# Install dependencies
RUN apt-get update
RUN	apt-get install -y mariadb-server && apt-get install -y mariadb-client

COPY tools/ /tools/
COPY conf/ /etc/mysql/mariadb.conf.d/

EXPOSE 3306

CMD	"./tools/run.sh"
