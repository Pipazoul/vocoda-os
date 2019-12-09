
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
#sudo snap install spotify

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

