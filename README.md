# archinstall
arch install script 

## Specs & Neofetch

### Specs

```
Asrock A300
Ryzen 3 3200g
2x16g 3200mhz
2x1tb ssd
1x512g nvme
1x128g nvme
Noctua NH-L9i
```

### Neofetch
```
# bl @ bl-arch in ~ [9:40:08] 
$ neofetch
                   -`                    bl@bl-arch 
                  .o+`                   ---------- 
                 `ooo/                   OS: Arch Linux x86_64 
                `+oooo:                  Kernel: 5.16.9-arch1-1 
               `+oooooo:                 Uptime: 2 days, 5 hours, 18 mins 
               -+oooooo+:                Packages: 840 (pacman) 
             `/:-:++oooo+:               Shell: zsh 5.8.1 
            `/++++/+++++++:              Resolution: 1920x1080 
           `/++++++++++++++:             DE: GNOME 41.4 
          `/+++ooooooooooooo/`           WM: Mutter 
         ./ooosssso++osssssso+`          WM Theme: Black-Maia-40 
        .oossssso-````/ossssss+`         Theme: Prof-Gnome-Dark-3.6 [GTK2/3] 
       -osssssso.      :ssssssso.        Icons: Papirus-Dark [GTK2/3] 
      :osssssss/        osssso+++.       Terminal: gnome-terminal 
     /ossssssss/        +ssssooo/-       CPU: AMD Ryzen 3 3200G (4) @ 3.600GHz 
   `/ossssso+/:-        -:/+osssso+-     GPU: AMD ATI Radeon Vega Series / Radeon Vega Mobile Series 
  `+sso+:-`                 `.-/+oso:    Memory: 6804MiB / 30080MiB 
 `++:.                           `-/+/
 .`                                 `/                           
                                                                 

```

## Install

- Boot to arch iso
- Run the built-in ``archinstall``
- Using the following:
  - Keyboard: 26 - US
  - Layout: 32 - Japan
  - Disks:  1 - nvme0n1 
  - Disks: {enter} confirm drive
  - Partitions: 0 - Wipe all
  - File System: 1 - ext4
  - Disk Encryption Password: {supersecretpw}
  - Swap on zram: Y
  - Use grub over systemd-boot: n
  - Host name: bl-arch
  - Root password: {blank}
  - Super user account: bl
  - Password: {supersecretpw}
  - Profiles (window manager): 0 (desktop)
  - Which manager: 5 (gnome)
  - Video Drivers: 0 - AMD / ATI (open source)
  - Use pipewire/pulse: 0 (pipewire)
  - Kernel: 0 - linux
  - Additional apps: htop vim git curl firefox 
  - Network interface: 1 - Network Manager
  - Network config: 0 - dhcp 
  - Time zone: Asia/tokyo
  - Automatic sync: y
  - {press enter to start}
- Chroot into newly installed system: n
- Reboot


## First Login

Open terminal, going to ensure up to date (99.999% will be since rolling release), then install stuff.

```
git config --global user.email "MY EMAIL"
git config --global user.name "bl"
sudo pacman -Syu
sudo pacman -S discord firefox git rsync rclone zsh unzip python-pip htop wget ffmpeg bat zsh-syntax-highlighting neofetch nmap ansible bmon nload dnsutils ttf-dejavu ttf-roboto ttf-ubuntu-font-family tailscale openssh otf-ipafont ttf-bitstream-vera ttf-croscore noto-fonts ttf-font-awesome gnome-tweaks
```

Install ohmyzsh
``sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"``

Install yay 
```
sudo pacman --needed -S base-devel git
mkdir $HOME/gits/
cd $HOME/gits/
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

yay some stuff
```
yay -S brave
yay -S 1password
yay -S spotify
yay -S obsidian
yay -S visual-studio-code-bin
```

Start some services
```
sudo systemctl start sshd
sudo systemctl enable sshd
sudo systemctl enable --now tailscaled
sudo tailscale up
tailscale ip -4
```

Install some pips
```
pip3 install yt-dlp --user
pip3 install bpytop --user
pip3 install pandas --user
pip3 install paramiko --user
pip3 install netaddr --user
```

## Bluetooth
```
sudo pacman -S gnome-bluetooth 
sudo pacman -S gnome-control-center
sudo systemctl start bluetooth.service
sudo systemctl enable bluetooth.service
```
*Reboot for this to work properly.*



