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

echo "To setup your GIT credentials we need some details"
echo "Please enter the e-mail you want to associate with GIT"
read -p "> " GIT_EMAIL
echo "Please enter the full name you want to associate with GIT"
read -p "Please enter the full name you want to associate with GIT > " GIT_NAME

echo "Performing necessary system update / upgrade"
sudo apt-get update
sudo apt-get upgrade -y

# Development machine specific
echo "Installing core dev tools"
sudo apt-get install curl make -y

echo "Installing GIT"
sudo apt-get install git -y

echo "Setting up GIT Config"
git config --global user.email "$GIT_EMAIL"
git config --global user.name "$GIT_NAME"
git config --global init.defaultBranch main
git config --global pull.rebase true
git config --global push.default current

echo "Installing IDEs"
sudo snap install webstorm --classic
sudo snap install pycharm-community --classic

echo "Installing Insomnia"
curl -o insomnia.deb -L https://updates.insomnia.rest/downloads/ubuntu/latest?&app=com.insomnia.app&source=website
sudo apt install ./insomnia.deb -y

echo "Installing n, node, npm"
curl -L https://git.io/n-install | bash

echo "Add global npm packages"
npm i -g prettier
npm i -g nodemon

# Remove unneeded packages
sudo apt-get autoremove