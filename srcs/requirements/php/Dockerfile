FROM debian:buster

MAINTAINER YanYan, yanyan@hexanyn.fr

RUN apt update;apt install -y php-fpm php-mysql wget

RUN cd /tmp/ \
	&& wget https://fr.wordpress.org/wordpress-5.3-fr_FR.tar.gz \
	&& tar xvf wordpress-5.3-fr_FR.tar.gz

RUN sed -i "s/\/run\/php\/php7.3-fpm.sock/0.0.0.0:9000/g" /etc/php/7.3/fpm/pool.d/www.conf && \
	mkdir -p /run/php

CMD if [ ! -d "/var/www/wordpress" ];then cp -r /tmp/wordpress /var/www && chown -Rv www-data: /var/www/;fi \
	&& php-fpm7.3 -F

EXPOSE 9000
