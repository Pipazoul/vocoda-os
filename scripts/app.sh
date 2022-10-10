# Apps
sudo apt install curl net-tools unrar

# Postman
snap install postman

# Github CLI
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh

# VS code
snap install code
# Composer
#curl -sS https://getcomposer.org/installer | php
#sudo mv composer.phar /usr/local/bin/composer
#chmod +x /usr/local/bin/composer

# Docker
sudo apt install docker.io
sudo usermod -aG docker ${USER}
sudo apt install docker-compose

# Postman
sudo snap install postman

# Chrome
 sudo sh -c 'echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'
 wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
 sudo apt-get update

sudo apt-get install google-chrome-stable

# Spotify
sudo snap install spotify

# Discord
sudo snap install Discord

sudo apt install git nodejs npm docker python3 python3-pip vlc synaptic openvpn

# Processing
#wget http://download.processing.org/processing-3.5.3-linux64.tgz
#unzip processing-* -d $HOME/Documents

# Avermedia Vlc support
sudo apt install kaffeine

# OBS
sudo add-apt-repository -y ppa:obsproject/obs-studio && sudo apt install -y ffmpeg obs-studio
# pip
# f.lux
# Jdownloader

# Slack
#sudo snap install --classic slack 

#Youtube DL
sudo apt install youtube-dl

# Openv vpn import - network manager
sudo apt install network-manager-openvpn-gnome openvpn-systemd-resolved

# Tidal cycles install
sudo apt-get install build-essential cabal-install git jackd2
git clone https://github.com/willbasky/build-supercollider.git
sh build-supercollider/check-dependencies.sh 
./build-supercollider/build-supercollider.sh 
./build-supercollider/build-sc3-plugins.sh
cabal update
cabal install tidal

# Syncthing install

# Add the release PGP keys:
#curl -s https://syncthing.net/release-key.txt | sudo apt-key add -

# Add the "stable" channel to your APT sources:
#echo "deb https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list

# Update and install syncthing:
#sudo apt-get update
#sudo apt-get install syncthing

#Install KeyPass
sudo apt-add-repository ppa:jtaylor/keepass
sudo apt-get update
sudo apt-get install keepass2 

# Install fuse dependency for kdrive
sudo add-apt-repository universe
sudo apt install libfuse2

#Install Discord
sudo snap install discord

sudo apt install python-pip

sudo apt-get install openvpn network-manager-openvpn network-manager-openvpn-gnome

# Handbrakes
sudo apt install-y libdvd-pkg
sudo dpkg-reconfigure libdvd-pkg
sudo apt install handbrake

