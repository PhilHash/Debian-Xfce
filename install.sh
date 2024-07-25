#!/usr/bin/env bash

##my custom xfce on debian
##check if you run script with sudo
if ! [ $(id -u) = 0 ]; then
  echo "This script must run with sudo, try again..."
  exit 1
fi


apt install -y libxfce4ui-utils thunar xfce4-panel gnome-themes-extra \
	xfce4-pulseaudio-plugin blueman gnome-disk-utility xfce4-session xfce4-settings \
	fonts-recommended xfconf xfdesktop4 xfwm4 thunar-volman xfce4-notifyd \
	xfce4-power-manager mousepad ristretto thunar-archive-plugin parole atril \
	xfce4-clipman-plugin ibus-unikey gammastep timeshift git gh nodejs podman \
	xfce4-screenshooter xfce4-taskmanager xfce4-terminal xfce4-whiskermenu-plugin \
	thunderbird flatpak gstreamer1.0-vaapi ffmpeg intel-media-va-driver-non-free \
	network-manager-gnome libreoffice-calc libreoffice-writer libreoffice-impress \
	libreoffice-gnome network-manager-openvpn-gnome firewall-config menulibre \
	libavcodec-extra slick-greeter ttf-mscorefonts-installer unrar