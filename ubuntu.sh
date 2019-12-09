# General update
sudo apt update
sudo apt install nvidia-driver-390

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

sh script/lamp.sh
sh script/app.sh

# Launching i3 script
sh scripts/i3_config.sh
