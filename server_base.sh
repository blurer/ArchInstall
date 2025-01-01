#!/bin/bash

# set parallel downloads
sed -i 's/#ParallelDownloads = 5$/ParallelDownloads = 25/g' /etc/pacman.conf
