#!/bin/bash

# set parallel downloads
sed -i 's/#ParallelDownloads = 5$/ParallelDownloads = 25/g' /etc/pacman.conf

# enable sshd
sudo systemctl start sshd

# set rootpw (random 5 letter)
PASS=$(tr -dc 'a-zA-Z' < /dev/urandom | head -c 5)
echo "root:$PASS" | chpasswd
echo $PASS

# get and print ip address
ip route get 1 | awk '{print $7}' | head -1

# 
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "!!!!!!! THIS IS FOR /dev/sda1 !!!!!!!!"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo ""
echo "SSH TO BOX AND THEN PRESS ENTER FOR SCRIPT TO START"
sleep 30
read -p "Press enter to continue..."

# user_configuration-SR6cE5H7HG.json
# user_credentials-SR6cE5H7HG.json

archinstall --config user_configuration-SR6cE5H7HG.json --creds user_credentials-SR6cE5H7HG.json