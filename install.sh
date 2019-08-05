# General update
sudo apt update
sudo apt dist-upgrade


# NTFS Read Write Support
sudo apt install ntfs-3g
sudo fdisk -l
echo 'Wich ntfs disk would you like to use as a Data storage ? ex :  /dev/sda '
read disk
echo $disk
ntfs-3g -o rw,umask=0000 /dev/sda5 /mnt/win-data/


# LAMP
sudo apt install apache2 php libapache2-mod-php mysql-server php-mysql php-curl php-gd php-intl php-json php-mbstring php-xml php-zip
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.zip
unzip phpMyAdmin-4.9.0.1-all-languages.zip -d /var/www/html/ 
mv /var/www/html/phpMyAdmin-4.9.0.1-all-languages /var/www/html/phpmyadmin

# Apps

# VS code
# Processing
# Composer
# Slack
sudo apt install evolution f.lux git spotify firefox chrome nodejs npm docker python3 pip



#I3
