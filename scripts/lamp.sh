# LAMP
sudo apt install apache2 php libapache2-mod-php mysql-server php-mysql php-curl php-gd php-intl php-json php-mbstring php-xml php-zip
sudo mysql_secure_installation

echo "Mysql installation : enter the username you want for your mysql db : "
read mysqlUser
echo "and a password now : "
read mysqlPassword

sudo mysql -Bse "GRANT ALL PRIVILEGES ON *.* TO '"$mysqlUser"'@'localhost' IDENTIFIED BY '"$mysqlPassword"';"

echo "User " $mysqlUser " created "

wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.zip
sudo unzip phpMyAdmin-4.9.0.1-all-languages.zip -d /var/www/html/ 
sudo mv /var/www/html/phpMyAdmin-4.9.0.1-all-languages /var/www/html/phpmyadmin
sudo a2enmod rewrite
sudo service apache2 restart
