# Mount DATA HD on boot
mount="/dev/sda5"

if grep -qs "$mount" /proc/mounts; then
  echo "It's mounted."
else
  echo "It's not mounted."
  sudo ntfs-3g -o uid=1000,dmask=0022,fmask=133 /dev/sda5 /$HOME/DATA/
  if [ $? -eq 0 ]; then
   echo "Mount success!"
  else
   echo "Something went wrong with the mount..."
  fi
fi
