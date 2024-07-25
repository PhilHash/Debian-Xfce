# My-own-custom-Debian-xfce-install

This is my own way to install Debian xfce on laptop. 

![image](https://github.com/user-attachments/assets/1f161427-307d-4c4a-88dd-93d42d9bbca8)


![image](https://github.com/user-attachments/assets/f7442857-b107-428a-b197-9cb56820433c)

## Requirements

* A Debian installation (hardware or virtual machine) with appropriate video drivers.

* sudo privileges to install packages and run optional install script.

* Installation of git to clone this repo sudo pkg install git

* Installation of bash to run install script sudo pkg install bash

## Install Debian with btrfs in advanced expert install

Btrfs partition is a good way to use Linux cause it has many advanced features. Also it has good compression which reduces write cycles to your hard disks. And the most favorite thing i like about btrfs is its instant backup.
You can refer to this video on how to install debian with btrfs. By the way you can use a swap partition for convinience as me instead of zram. And i dont use btrfs-grub as Drew cause Debian break hardly you know 😊. And my subvolumes are @ @home @root @log @tmp:

```bash
https://youtu.be/MoWApyUb5w8?si=R93rte7CdvL1pXI8
```

![image](https://github.com/user-attachments/assets/8761d8f3-c978-401a-b795-64515197e3f2)

## Install minimal Debian
First you can install a minimum install of Debian with only this option standard system utilities and also adding the non-free, contrib to the sources in advanced expert install:

![image](https://github.com/user-attachments/assets/1ca5d936-75cb-4980-87e4-b08aac57e953)

or adding non free software to repo manually:

```bash
deb http://deb.debian.org/debian/ bookworm main contrib non-free non-free-firmware

deb http://security.debian.org/debian-security bookworm-security main contrib non-free non-free-firmware

deb http://deb.debian.org/debian/ bookworm-updates main contrib non-free non-free-firmware

#deb http://deb.debian.org/debian bookworm-backports main contrib non-free non-free-firmware
```

### This script also includes podman, support for bluetooth, vpn, battery percentage, slick-greeter instead of lightdm-gtk-greeter, etc. If you don't want any of them, you can nano the install script and delete unwanted packages.

## Quick install

```bash
git clone https://github.com/PhilHash/My-xfce-debian-install.git
cd My-xfce-debian-install
./install.sh
```
if you experience no network after install, it dues to the file in /etc/network/interfaces. Just comment out all the line inside that file and it will let network-manager configure the wifi. Any issues feel free to open at:

`https://github.com/PhilHash/My-xfce-debian-install/issues`
