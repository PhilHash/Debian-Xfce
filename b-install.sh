##Install my packages of xfce on debian
sudo apt install -y curl adb filezilla libxfce4ui-utils thunar xfce4-panel gnome-themes-extra \
	xfce4-pulseaudio-plugin blueman gnome-disk-utility xfce4-session xfce4-settings \
	fonts-recommended xfconf xfdesktop4 xfwm4 thunar-volman xfce4-notifyd \
	xfce4-power-manager mousepad ristretto thunar-archive-plugin vlc atril \
	xfce4-clipman-plugin ibus-unikey gammastep timeshift git gh nodejs podman \
	xfce4-screenshooter xfce4-taskmanager xfce4-terminal xfce4-whiskermenu-plugin \
	thunderbird flatpak gstreamer1.0-vaapi ffmpeg intel-media-va-driver-non-free \
	network-manager-gnome libreoffice-calc libreoffice-writer libreoffice-impress \
	libreoffice-gnome network-manager-openvpn-gnome firewall-config menulibre \
	libavcodec-extra slick-greeter ttf-mscorefonts-installer unrar papirus-icon-theme clamav clamtk \
 	gvfs-backends xserver-xorg-video-intel- i965-va-driver- i965-va-driver-shaders-
##install brave 
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser
##Add flathub repo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
##Make network-manager manages the wifi
sudo sed -i '11,14s/^/#/' /etc/network/interfaces
