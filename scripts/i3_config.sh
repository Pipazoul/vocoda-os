#I3
sudo apt install i3 pasystray

sudo apt-get install i3-wm dunst i3lock i3status suckless-tools blueman volumeicon-alsa
sudo apt-get install compton hsetroot rxvt-unicode xsel rofi fonts-noto fonts-mplus xsettingsd lxappearance scrot viewnior

#I3 Config Setup
git clone https://github.com/Pipazoul/i3-starterpack
mv i3-starterpack $HOME
cd $HOME/.config
ln -s $HOME/i3-starterpack/.config/i3 i3
ln -s $HOME/i3-starterpack/.config/i3status i3status
cp -R $HOME/i3-starterpack/.fonts/* $HOME/.fonts/

