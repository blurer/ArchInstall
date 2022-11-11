# archinstall
arch install script 

## Specs & Neofetch

### Specs
```
Thinkpad T480s
i7
24gb ddr3
1tb nvme
```

### Neofetch
```


```


## Install

- Boot to arch iso
- Modify ``/etc/pacman.conf`` to use parallel downloads (25-50 should be fine for fast circuit + nvme)
- Run the built-in ``archinstall``
- Using the following:
  - Keyboard: US
  - Layout: US
  - Disks:  nvme1n1 
  - Disks: {enter} confirm drive
  - Partitions: Wipe all
  - File System: ext4
  - Use grub over systemd-boot: n
  - Host name: bl-lt
  - Super user account: bl
  - Password: {supersecretpw}
  - Profiles (window manager): 0 (desktop)
  - Which manager: i3-gaps
  - Video Drivers: intel
  - Use pipewire/pulse: pipewire
  - Kernel: linux
  - Additional apps: htop vim git curl firefox 
  - Network interface: NetworkManager
  - Time zone: America/New_York
  - Automatic sync: y
  - {press enter to start}
- Chroot into newly installed system: n
- Reboot


## First Login

- Open terminal, going to ensure up to date (99.999% will be since rolling release), then install stuff.
- Modify ``/etc/pacman.conf`` to use parallel downloads (25-50 should be fine for fast circuit + nvme)
```
git config --global user.email "bl@bl.com"
git config --global user.name "bl"
sudo pacman -Syu
sudo pacman -S discord firefox git rsync rclone zsh unzip python-pip htop wget ffmpeg bat zsh-syntax-highlighting neofetch nmap ansible bmon nload dnsutils ttf-dejavu ttf-roboto ttf-ubuntu-font-family tailscale openssh otf-ipafont ttf-bitstream-vera ttf-croscore noto-fonts ttf-font-awesome flameshot spectacle alacritty python-setuptools
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
yay -S 1password
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
sudo systemctl start bluetooth.service
sudo systemctl enable bluetooth.service
```

## Steam
Edit ``/etc/pacman.conf`` to enable multilib:
```
[multilib]
Include = /etc/pacman.d/mirrorlist
```
Then update repos and install 
```
sudo pacman -Sy
sudo pacman -S steam
```
## Printing

```
sudo pacman -S cups print-manager print-manager
sudo systemctl enable cups
sudo systemctl start cups
```
