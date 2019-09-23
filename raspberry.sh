# to install 
# nodejs npm dat dat-deploy
# https://p2p.newcomputers.group/guides/installing-dat-raspberry-pi.html
# hostapd

sudo apt update && apt upgrade
sudo apt upgrade-dist


# python start script

#!/usr/local/bin/python

import time
loop = 1

while loop == 1:
  f = open("logo.txt", "r")
  text = f.read()

  i = 1
  while i < 50:
    print(text)
    text = text + '-'
    time.sleep(0.1)
    i = i+1
  i = 1
  text = f.read
  f.close()

#logo.txt
 __      __                 _        ____   _____
 \ \    / /                | |      / __ \ / ____|
  \ \  / /__   ___ ___   __| | __ _| |  | | (___
   \ \/ / _ \ / __/ _ \ / _` |/ _` | |  | |\___ \
    \  / (_) | (_| (_) | (_| | (_| | |__| |____) |
     \/ \___/ \___\___/ \__,_|\__,_|\____/|_____/


