#!/bin/bash
# LxDERS
# DEVELOPER TOOLS

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

# Development machine specific
echo "Installing core dev tools"
sudo apt-get install curl make -y

echo "Installing IDEs"
sudo snap install webstorm --classic
sudo snap install pycharm-community --classic

echo "Installing n, node, npm"
curl -L https://git.io/n-install | bash

echo "Add global npm packages"
npm i -g prettier

# Remove unneeded packages
sudo apt-get autoremove