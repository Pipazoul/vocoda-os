# General update
sudo apt update
sudo apt dist-upgrade
sudo ubuntu-drivers autoinstall

sudo apt install gparted curl net-tools virtualbox

# NTFS Read Write Support
sudo apt install ntfs-3g
sudo fdisk -l
echo 'Wich ntfs disk would you like to use as a Data storage ? ex :  /dev/sda '
read disk
echo $disk
mkdir $HOME/DATA
ntfs-3g -o rw,umask=0000 $disk /$HOME/DATA/
sudo apt-get install nmap

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


# Apps

# Postman
snap install postman

# VS code
echo "Go to https://code.visualstudio.com/Download and download the last VS Code .deb package" 
echo "put the downloaded file in the install directory then press enter"
read enter
sudo dpkg -i code_*

# Composer
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
chmod +x /usr/local/bin/composer

# Chrome
 sudo sh -c 'echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'
 wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
 sudo apt-get update

sudo apt-get install google-chrome-stable

# Spotify
sudo snap install spotify

sudo apt install git nodejs npm docker python3 python3-pip
vlc synaptic openvpn

# Processing
wget http://download.processing.org/processing-3.5.3-linux64.tgz
unzip processing-* -d $HOME/Documents

# Avermedia Vlc support
sudo apt install kaffeine

# OBS
sudo add-apt-repository -y ppa:obsproject/obs-studio && sudo apt install -y ffmpeg obs-studio
# pip
# f.lux
# Slack
sudo snap install --classic slack 

#I3
sudo apt install i3 pasystray
#E: Unable to locate package blueman-applet
#E: Unable to locate package brightness-controller

sudo apt-get install i3-wm dunst i3lock i3status suckless-tools blueman volumeicon-alsa
sudo apt-get install compton hsetroot rxvt-unicode xsel rofi fonts-noto fonts-mplus xsettingsd lxappearance scrot viewnior
git clone https://github.com/Pipazoul/i3-starterpack
# Symbolic links to git repo
cd $HOME/.config/i3/
ln -s $HOME/Documents/i3-starterpack/.config/i3/config config

cd $HOME/.config/
ln -s $HOME/Documents/i3-starterpack/.config/i3status/ i3status
cp -R .fonts/* $HOME/.fonts/
i3 restart
