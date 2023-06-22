#!/bin/bash
# LxDERS
# SETUP FIREFOX ESR

echo ""
echo "██      ██   ██ ██████  ███████ ██████  ███████ "
echo "██       ██ ██  ██   ██ ██      ██   ██ ██      ``"
echo "██        ███   ██   ██ █████   ██████  ███████ "
echo "██       ██ ██  ██   ██ ██      ██   ██      ██ "
echo "███████ ██   ██ ██████  ███████ ██   ██ ███████ "
echo ""
echo "LxDERS Linux Desktop Environment Restoration Script"

echo "This operation will :-"
echo "- Remove firefox (snap)"
echo "- Reinstall it as firefox-esr (ppa)"
echo "- Install the uBlock origin extension"
echo "Continue? (Y/n)"
read answer

# Convert the answer to lowercase
answer=${answer,,}

if [[ $answer == "n" || $answer == "no" ]]; then
    echo "User aborted operation, returning control..."
    exit 0
fi

echo "Proceeding..."

# Remove firefox snap and use ppa
# sudo snap remove firefox
# sudo add-apt-repository ppa:mozillateam/ppa
# sudo apt update
# sudo apt install firefox-esr -y

mkdir temp

wget -O temp/ublock_origin.xpi https://addons.mozilla.org/firefox/downloads/file/4121906/ublock_origin-1.50.0.xpi
firefox-esr -url temp/ublock_origin.xpi

# Cleanup
rm -rf temp