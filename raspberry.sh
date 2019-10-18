# to install 
# nodejs npm dat dat-deploy
# https://p2p.newcomputers.group/guides/installing-dat-raspberry-pi.html
# hostapd

sudo apt update && apt upgrade -y
sudo apt upgrade-dist -y

#mount ntfs HD
sudo apt install ntfs-3g
sudo fdisk -l
echo 'Wich ntfs disk would you like to use as a Data storage ? ex :  /dev/sda '
read disk
echo 'How would you like to name the mounted folder'
read mountedFolder
echo $disk
mkdir $HOME/$mountedFolder
ntfs-3g -o rw,umask=0000 $disk /$HOME/$mountedFolder/

# wget kiwix
# as a service
# where is library.xml
# echo Now use ./kiwix-manager to add the kiwix files
wget https://github.com/kiwix/kiwix-tools/archive/3.0.1.zip
unzip 3.0.1.zip
touch 3.0.1/library.xml
echo 'Use ./kiwix-manager to add the kiwix files'
sudo cp configs/kiwix.service /etc/systemd/system
sudo systemctl  enable kiwix.service
sudo systemctl start kiwix.service

#minidlna
# ask for Music path
# ask for Video path
sudo apt install minidlna
echo 'What is the path to your Music Folder ?'
read musicFolder
echo 'What is the path to your Video Folder ?'
read videoFolder

cat 'media_dir='$musicFolder >>  /etc/minidlna.conf 
cat 'media_dir='$videoFolder >>  /etc/minidlna.conf 

sudo service minidlna restart

# apache2 
# write access to pi user
# add index.html
sudo apt install apache2
useradd pi -g www-data