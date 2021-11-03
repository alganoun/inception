sed -i "s/db_name/$DB_NAME/" var/www/html/wordpress/wp-config.php
sed -i "s/db_user/$DB_USER/" var/www/html/wordpress/wp-config.php
sed -i "s/db_password/$DB_PASSWORD/" var/www/html//wordpress/wp-config.php
cd /var/www/html/wordpress
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download --locale=fr_FR --allow-root
wp core install --url="localhost" --title="Inception" --admin_user="root" --admin_password=$ROOT_PASSWORD --admin_email="root@root.com" --allow-root
wp user create $DB_USER $USER_MAIL --role=author --user_pass=$DB_PASSWORD  --allow-root

chmod 777 /var/www/wordpress/

#service php7.3-fpm start
mkdir -p /run/php
php-fpm7.3 -F
