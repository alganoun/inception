FROM debian:buster

# Environment vars
ARG	MYSQL_USER
ARG	MYSQL_ROOT_PASSWORD
ARG	MYSQL_PASSWORD
ARG	MYSQL_DATABASE

# Install dependencies
RUN apt-get update
RUN	apt-get install -y mariadb-server && apt-get install -y mariadb-client

COPY	tools/ /tools/
RUN	sh /tools/start.sh

EXPOSE 3306

CMD	"./tools/run.sh"
