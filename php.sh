## PHP ##
echo "Instalando PHP e Apache"
sudo apt-get install apache2 -y
sudo systemctl start apache2.service

apt-cache pkgnames | grep php7.2

sudo apt-get install php -y
sudo apt-get install php-{bcmath,bz2,intl,gd,mbstring,mysql,zip,fpm} -y

systemctl restart apache2.service

php -v
