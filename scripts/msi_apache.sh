sudo apt install nvidia-driver-390

# NTFS Read Write Support
sudo apt install ntfs-3g
sudo fdisk -l
echo 'Wich ntfs disk would you like to use as a Data storage ? ex :  /dev/sda '
read disk
echo $disk
mkdir $HOME/DATA
ntfs-3g -o rw,umask=0000 $disk /$HOME/DATA/
#cat echo "$disk /  /$HOME/DATA/    defaults    0   0" >> /etc/fstab
sudo apt-get install nmap




