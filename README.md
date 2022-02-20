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
  - Keyboard: ? - jp - 0 (jp106)
  - Layout: 23 - Japan
  - Disks:  1 - nvme0n1 
  - Partitions: 1 - Format
  - File System: 1 - ext4
  - Disk Encryption Password: {supersecretpw}
  - Use grub over systemd-boot: n
  - Host name: bl-arch
  - Root password: {blank}
  - Super user account: bl
  - Password: {supersecretpw}
  - Profiles (window manager): 0 (desktop)
  - Which manager: 5 (gnome)
  - Video Drivers: 0 - AMD
  - Kernel: 0 - linux
  - Additional apps: htop vim git curl firefox 
  - Network interface: 0 - Network Manager
  - Network config: 0 - dhcp 
  - Time zone: Asia/tokyo
  - Automatic sync: y
  <press enter to start>
  - Chroot into newly installed system: n
  - Reboot


First Login







  git config --global user.email "you@example.com"
  git config --global user.name "Your Name"

