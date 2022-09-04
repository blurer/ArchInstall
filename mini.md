# archinstall
arch install script 

## Specs & Neofetch

### Specs

```
Z390 Dark
8700k/8086k
2x32g 3200mhz
H510 Flow
Noctua DH-15
4x Arctic 120mm
XFX RX6400
```

### Neofetch
```
# bl @ bl-dt in ~/dev [10:37:52] 
$ neofetch
                   -`                    bl@bl-dt 
                  .o+`                   -------- 
                 `ooo/                   OS: Arch Linux x86_64 
                `+oooo:                  Host: Z390 DARK 
               `+oooooo:                 Kernel: 5.15.64-1-lts 
               -+oooooo+:                Uptime: 51 mins 
             `/:-:++oooo+:               Packages: 978 (pacman) 
            `/++++/+++++++:              Resolution: 2560x1080 @ 143.94Hz 
           `/++++++++++++++:             DE: Plasma 5.25.4 
          `/+++ooooooooooooo/`           WM: KWin 
         ./ooosssso++osssssso+`          Theme: [Plasma], Breeze [GTK2/3] 
        .oossssso-````/ossssss+`         CPU: Intel i7-8086K (12) @ 5.100GHz 
       -osssssso.      :ssssssso.        GPU: AMD ATI Radeon RX 6400 / 6500 XT 
      :osssssss/        osssso+++.       Memory: 14413MiB / 64239MiB 
     /ossssssss/        +ssssooo/-       CPU Usage: 16% 
   `/ossssso+/:-        -:/+osssso+-     Disk (/): 48G / 932G (6%) 
  `+sso+:-`                 `.-/+oso:    Disk (/mnt/sda1): 1.7T / 4.6T (37%) 
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



