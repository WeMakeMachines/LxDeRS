#!/bin/bash
# LxDERS
# LINUX DESKTOP ENVIRONMENT RESTORATION SCRIPT
# ORGANISATION TOOLS
# FOR UBUNTU FLAVOURED DISTRIBUTIONS
# WARNING! EXPECTS DEVELOPER

DIV="\n\n███████ "

echo "██      ██   ██ ██████  ███████ ██████  ███████ "
echo "██       ██ ██  ██   ██ ██      ██   ██ ██      ``"
echo "██        ███   ██   ██ █████   ██████  ███████ "
echo "██       ██ ██  ██   ██ ██      ██   ██      ██ "
echo "███████ ██   ██ ██████  ███████ ██   ██ ███████ "
echo "                                                "
echo "$DIV LxDERS Linux Desktop Environment Restoration Script"

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
