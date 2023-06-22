#!/bin/bash
# LxDERS
# SETUP GIT

echo ""
echo "██      ██   ██ ██████  ███████ ██████  ███████ "
echo "██       ██ ██  ██   ██ ██      ██   ██ ██      "
echo "██        ███   ██   ██ █████   ██████  ███████ "
echo "██       ██ ██  ██   ██ ██      ██   ██      ██ "
echo "███████ ██   ██ ██████  ███████ ██   ██ ███████ "
echo ""
echo "LxDERS Linux Desktop Environment Restoration Script"

echo "To setup your GIT config we need some details"
echo "Please enter the e-mail you want to associate with GIT"
read -p "> " GIT_EMAIL
echo "Please enter the full name you want to associate with GIT"
read -p "> " GIT_NAME
echo "Please enter the name of the defaultBranch (default: master)"
read -p "> " GIT_DEFAULT_BRANCH

if [[ $GIT_DEFAULT_BRANCH != "master" && $GIT_DEFAULT_BRANCH != "main" ]]; then
    GIT_DEFAULT_BRANCH="master"
fi

echo "Installing GIT"
sudo apt-get install git -y

echo "Setting up GIT Config"
git config --global user.email "$GIT_EMAIL"
git config --global user.name "$GIT_NAME"
git config --global init.defaultBranch "$GIT_DEFAULT_BRANCH"
git config --global pull.rebase true
git config --global push.default current
