
#Wordpress Installation 
#cd /var/www/html/wordpress
#curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
#chmod +x wp-cli.phar
#mv wp-cli.phar /usr/local/bin/wp
#wp core download --locale=fr_FR --allow-root
#wp core install --url=alganoun.42.fr --title=Inception --admin_user=root --admin_password=$ROOT_PASSWORD --admin_email=root@root.com --allow-root
#wp user create $DB_USER $SUSER_EMAIL --user_pass=$DB_PASSWORD --role=subscriber --allow-root
#
#chmod 777 /var/www
#Dire au serveur de continuer a tourner

service php7.3-fpm start
sleep infinity && wait
