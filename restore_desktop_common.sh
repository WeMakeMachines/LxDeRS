#!/bin/bash
# LxDERS
# LINUX DESKTOP ENVIRONMENT RESTORATION SCRIPT
# COMMON TOOLS
# FOR UBUNTU FLAVOURED DISTRIBUTIONS

DIV="\n\n███████ "

echo "██      ██   ██ ██████  ███████ ██████  ███████ "
echo "██       ██ ██  ██   ██ ██      ██   ██ ██      ``"
echo "██        ███   ██   ██ █████   ██████  ███████ "
echo "██       ██ ██  ██   ██ ██      ██   ██      ██ "
echo "███████ ██   ██ ██████  ███████ ██   ██ ███████ "
echo "                                                "
echo "$DIV LxDERS Linux Desktop Environment Restoration Script"

echo "$DIV Performing necessary system update / upgrade"
sudo apt-get update
sudo apt-get upgrade -y

# Remove firefox snap and use ppa
sudo snap remove firefox
sudo add-apt-repository ppa:mozillateam/ppa
sudo apt update
sudo apt install firefox-esr -y

# Package management
echo "$DIV Installing Flatpak"
sudo apt install flatpak -y
sudo apt install plasma-discover-backend-flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Apps
echo "$DIV Installing core system applications"
sudo apt-get install network-manager-openvpn -y

echo "$DIV Installing common apps"
sudo apt-get install gnome-disk-utility clementine htop dict dosbox -y

echo "$DIV Installing browsers, chromium"
sudo apt-get install chromium-browser -y

echo "$DIV Installing keepassxc"
sudo apt-get install keepassxc -y

echo "$DIV Installing inkscape"
sudo snap install inkscape

echo "$DIV Installing Joplin"
JOPLIN_RELEASE_VERSION=$(wget -qO - "https://api.github.com/repos/laurent22/joplin/releases/latest" | grep -Po '"tag_name": ?"v\K.*?(?=")')
wget -O "Joplin.AppImage" "https://github.com/laurent22/joplin/releases/download/v${JOPLIN_RELEASE_VERSION}/Joplin-${JOPLIN_RELEASE_VERSION}.AppImage"
mkdir ~/Applications/
mv Joplin.AppImage ~/Applications/

echo "$DIV Installing dict"
echo "Installing dict"
sudo apt-get install dict -y

echo "Installing barrier"
sudo apt-get install barrier -y

# Remove unneeded packages
sudo apt-get autoremove

echo "$DIV Please manually install appimaged"
echo "$DIV https://github.com/probonopd/go-appimage"
