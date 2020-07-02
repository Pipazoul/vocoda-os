# to install 
# nodejs npm dat dat-deploy
# https://p2p.newcomputers.group/guides/installing-dat-raspberry-pi.html
# hostapd

#Setting locales to en_GB
LANGUAGE="en_GB"
export LANGUAGE

echo 'System upgrade'
sudo apt update && sudo apt upgrade -y
echo 'Dist upgrade'
sudo apt dist-upgrade -y
sudo apt install -y git



#mount ntfs HD
sudo apt install ntfs-3g -y
#sudo fdisk -l
#echo 'Wich ntfs disk would you like to use as a Data storage ? ex :  /dev/sda '
#read disk
#echo 'How would you like to name the mounted folder'
#read mountedFolder
#echo $disk
#mkdir $HOME/$mountedFolder
#ntfs-3g -o rw,umask=0000 $disk /$HOME/$mountedFolder/

# wget kiwix
# as a service
# where is library.xml
# echo Now use ./kiwix-manager to add the kiwix files
#wget https://github.com/kiwix/kiwix-tools/archive/3.0.1.zip
#unzip 3.0.1.zip
#touch 3.0.1/library.xml
#echo 'Use ./kiwix-manager to add the kiwix files'
#sudo cp configs/kiwix.service /etc/systemd/system
#sudo systemctl  enable kiwix.service
#sudo systemctl start kiwix.service

#minidlna
# ask for Music path
# ask for Video path
#sudo apt install minidlna -y
#echo 'What is the path to your Music Folder ?'
#read musicFolder
#echo 'What is the path to your Video Folder ?'
#read videoFolder

#cat 'media_dir='$musicFolder >>  /etc/minidlna.conf 
#cat 'media_dir='$videoFolder >>  /etc/minidlna.conf 
#sudo service minidlna restart

# LAMP

# PHP 7 Installation
#sudo apt-get install ca-certificates apt-transport-https

echo "--- INSTALL LAMP SERVER ------------------------------------"
sudo apt -y install apache2

# Adding php 7.2 source 
wget -q https://packages.sury.org/php/apt.gpg -O- | sudo apt-key add -
echo "deb https://packages.sury.org/php/ stretch main" | sudo tee /etc/apt/sources.list.d/php7.list
sudo apt update
# Removed php-tokenizer to work with raspian
# TODO Install php 7.1 or 7.2 to install the last owncloud version
sudo apt -y install php libapache2-mod-php php7.2-mbstring php7.2-xmlrpc php7.2-soap php7.2-mysql php7.2-gd php7.2-xml php7.2-cli php7.2-zip php7.2-bcmath php7.2-json php7.2-curl
sudo apt install -y mysql-server


sudo usermod -a -G www-data $USER
sudo chown -R www-data:www-data /var/www/
sudo chmod -R g+rw /var/www/


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

#Nextcloud install
cd /var/www/html
curl https://download.nextcloud.com/server/releases/nextcloud-17.0.2.tar.bz2 | sudo tar -jxv

echo "Mysql nextcloud user creation enter the user password now : "
read mysqlPassword

sudo mysql -Bse "CREATE USER 'nextcloud'@'localhost' IDENTIFIED BY '"$mysqlPassword"';"
sudo mysql -Bse "CREATE DATABASE nextcloud;"
sudo mysql -Bse "GRANT ALL PRIVILEGES ON nextcloud.* TO 'nextcloud'@'localhost';"

echo "Edit the config.php file to allow your ip adress as a trusted domain"