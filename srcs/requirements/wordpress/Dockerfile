FROM debian:buster

ARG DB_NAME
ARG DB_USER
ARG DB_PASSWORD
ARG ROOT_PASSWORD
ARG USER_MAIL

RUN mkdir -p var/www/html/
RUN chmod 777 var
RUN chmod 777 var/www
RUN chmod 777 var/www/html

# Install all dependencies
RUN	apt-get update
RUN apt-get install unzip wget curl -y
RUN apt-get install -y php php-fpm
RUN apt-get install -y php-mysql && apt-get install -y php-curl
RUN apt-get install -y php-dom && apt-get install -y php-mbstring
RUN apt-get install -y php-imagick && apt-get install -y php-zip

EXPOSE 9000

ADD https://fr.wordpress.org/latest-fr_FR.tar.gz ./var/www/html/
RUN tar -xvf /var/www/html/latest-fr_FR.tar.gz -C /var/www/html/ 
#RUN rm -rf /var/www/html/wordpress/latest-fr_FR.tar.gz
RUN chmod 777 var/www/html/wordpress/*

COPY tools/wp-config.php /var/www/html/wordpress
COPY tools/init_env.sh ./
COPY tools/start.sh ./

RUN	chmod 777 ./init_env.sh
RUN	./init_env.sh
RUN echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf

# Listening


CMD "./start.sh"


