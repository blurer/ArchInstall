#!/bin/bash

# set parallel downloads
sed -i 's/#ParallelDownloads = 5$/ParallelDownloads = 25/g' /etc/pacman.conf

# enable sshd
sudo systemctl start sshd

# set rootpw (random 5 letter)
PASS=$(tr -dc 'a-zA-Z' < /dev/urandom | head -c 5)
echo "root:$PASS" | chpasswd
echo $PASS

