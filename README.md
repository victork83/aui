# Скрипт установки Archlinux

Данный скрипт упрощает установку "с нуля" системы ArchLinux!

Вначале данный скрипт можно опробовать в `virtualbox`

Для запуска в virtualbox установки в UEFI-режиме потребуется дополнительный виртуальный жёсткий диск, получить его можно командой

VBoxManage convertfromraw <путь к ISO-образу> <путь к VDI-файлу>

## Требования

- Подключенное интернет соединение (LAN или Wi-Fi). Для использования WI-FI можно воспользоваться командой wifi-menu
- Запуск скрипта от 'root'а
- Перед запуском скрипта (в UEFI режиме) рекомендуется проверить загрузочные записи системы: 'efibootmgr'
- Удалить ненужные записи можно командой: 'efibootmgr --delete-bootnum - b XXXX'
- Более подробно про UEFI: 'https://goo.gl/Jz11LO'
- Тема оформления Arc Dark: 'https://goo.gl/0Ltcpl'

## Как получить этот скрипт
### С помомщью git
- Необходимо увеличить размер раздела cowspace: `mount -o remount,size=2G /run/archiso/cowspace`
- Получить список пакетов и установить git командой: `pacman -Sy git`
- Загрузить сам скрипт: `git clone git://github.com/victork83/aui`

## Как использовать скрипты
- FIFO [system base]: `cd aui && ./fifo`
- LILO [the rest...]: `cd aui && ./lilo`

## FIFO СКРИПТ
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

## LILO СКРИПТ
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
- И многое другое...
