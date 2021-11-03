FROM debian:buster

RUN mkdir -p var/www/html/wordpress
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

COPY tools/wp-config.php /var/www/html/wordpress
COPY tools/start.sh ./
RUN echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf

# Listening


CMD "./start.sh"


