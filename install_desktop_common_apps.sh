#!/bin/bash
# LxDERS
# COMMON

echo ""
echo "██      ██   ██ ██████  ███████ ██████  ███████ "
echo "██       ██ ██  ██   ██ ██      ██   ██ ██      "
echo "██        ███   ██   ██ █████   ██████  ███████ "
echo "██       ██ ██  ██   ██ ██      ██   ██      ██ "
echo "███████ ██   ██ ██████  ███████ ██   ██ ███████ "
echo ""
echo "LxDERS Linux Desktop Environment Restoration Script"

echo "Performing necessary system update / upgrade"
sudo apt-get update
sudo apt-get upgrade -y

# Package management
echo "Installing Flatpak"
sudo apt install flatpak -y
sudo apt install plasma-discover-backend-flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# system
echo "Installing system applications"
sudo apt-get install network-manager-openvpn htop -y

# tools
echo "Installing popular light tools"
sudo apt-get install gnome-disk-utility keepassxc barrier -y

# dict
sudo apt-get install dict -y
echo '# Added by LxDERS' >> ~/.bashrc
echo 'alias dict-de="dict -d fd-deu-eng"' >> ~/.bashrc
echo '# LxDERS' >> ~/.bashrc

# fun
echo "Installing fun"
sudo apt-get install clementine dosbox -y

# apps
echo "Installing apps"
sudo apt-get install chromium-browser -y

echo "Installing inkscape"
sudo add-apt-repository ppa:inkscape.dev/stable
sudo apt update
sudo apt install inkscape

echo "Installing Joplin"
JOPLIN_RELEASE_VERSION=$(wget -qO - "https://api.github.com/repos/laurent22/joplin/releases/latest" | grep -Po '"tag_name": ?"v\K.*?(?=")')
wget -O "Joplin.AppImage" "https://github.com/laurent22/joplin/releases/download/v${JOPLIN_RELEASE_VERSION}/Joplin-${JOPLIN_RELEASE_VERSION}.AppImage"
mkdir ~/Applications/
mv Joplin.AppImage ~/Applications/

# Remove unneeded packages
sudo apt-get autoremove

echo "Please manually install appimaged"
echo "https://github.com/probonopd/go-appimage"
