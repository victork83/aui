# Archlinux Install

Install and configure archlinux has never been easier!

You can try it first with a `virtualbox`

## Prerequisites

- A working internet connection
- Logged in as 'root'

## How to get it
### With git
- Increase cowspace partition: `mount -o remount,size=2G /run/archiso/cowspace`
- Get list of packages and install git: `pacman -Sy git`
- get the script: `git clone git://github.com/victork83/aui`

## How to use
- FIFO [system base]: `cd <dir> && ./fifo`
- LILO [the rest...]: `cd <dir> && ./lilo`

## FIFO SCRIPT
- Configure keymap
- Select editor
- Automatic configure mirrorlist
- Create partition
- Format device
- Install system base
- Configure fstab
- Configure hostname
- Configure timezone
- Configure hardware clock
- Configure locale
- Configure mkinitcpio
- Install/Configure bootloader
- Configure mirrorlist
- Configure root password

## LILO SCRIPT
- Backup all modified files
- Install additional repositories
- Create and configure new user
- Install and configure sudo
- Automatic enable services in systemd
- Install an AUR Helper [yaourt, packer, pacaur]
- Install base system
- Install systemd
- Install Preload
- Install Zram
- Install Xorg
- Install GPU Drivers
- Install CUPS
- Install Additional wireless/bluetooth firmwares
- Ensuring access to GIT through a firewall
- Install DE or WM [Cinnamon, Enlightenment, FluxBox, GNOME, i3, KDE, LXDE, OpenBox, XFCE]
- Install Developement tools [Vim, Emacs, Eclipse...]
- Install Office apps [LibreOffice, GNOME-Office, Latex...]
- Install System tools [Wine, Virtualbox, Grsync, Htop]
- Install Graphics apps [Inkscape, Gimp, Blender, MComix]
- Install Internet apps [Firefox, Google-Chrome, Jdownloader...]
- Install Multimedia apps [Rhythmbox, Clementine, Codecs...]
- Install Games [HoN, World of Padman, Wesnoth...]
- Install Fonts [Liberation, MS-Fonts, Google-webfonts...]
- Install and configure Web Servers
- Many More...
