#!/bin/bash
# LxDERS
# ORGANISATION TOOLS

echo ""
echo "██      ██   ██ ██████  ███████ ██████  ███████ "
echo "██       ██ ██  ██   ██ ██      ██   ██ ██      "
echo "██        ███   ██   ██ █████   ██████  ███████ "
echo "██       ██ ██  ██   ██ ██      ██   ██      ██ "
echo "███████ ██   ██ ██████  ███████ ██   ██ ███████ "
echo ""
echo "LxDERS Linux Desktop Environment Restoration Script"

echo "Add global npm packages"
npm i -g reveal-md

# Zoom
echo "Installing zoom"
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt --fix-broken install ./zoom_amd64.deb -y
rm ./zoom_amd64.deb

# Slack
echo "Installing Slack"
flatpak install flathub com.slack.Slack
