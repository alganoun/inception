FROM debian:buster

# Install all dependencys
RUN	apt-get update
RUN	apt-get install -y nginx
RUN	apt-get install -y openssl

# Create nginx directory
RUN	mkdir -p /run/nginx && \
	chmod 755 /run/nginx

# Create html directory
COPY /requirements/nginx/tools/index.html /var/www/html/

# Conf ssl certificate
RUN	chmod 700 /etc/ssl/private && \
		openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/C=FR/ST=ARA/L=Lyon/O=42/CN=127.0.0.1" -keyout /etc/ssl/private/nginx_server.key -out /etc/ssl/certs/nginx_server.crt && \
	openssl dhparam -out /etc/nginx/dhparam.pem 1000

# Upload new conf
COPY /requirements/nginx/conf/nginx.conf /etc/nginx/
COPY /requirements/nginx/conf/default.conf /etc/nginx/http.d/

# Ports availables
EXPOSE 443

# Start nginx services
RUN useradd --no-create-home nginx
CMD ["nginx", "-g", "daemon off;"]