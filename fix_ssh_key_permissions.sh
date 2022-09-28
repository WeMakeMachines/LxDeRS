#!/bin/bash
# LxDERS
# LINUX DESKTOP ENVIRONMENT RESTORATION SCRIPT
# SET CORRECT SSH KEY PERMISSIONS
# FOR UBUNTU FLAVOURED DISTRIBUTIONS

DIV="\n\n███████ "

echo "██      ██   ██ ██████  ███████ ██████  ███████ "
echo "██       ██ ██  ██   ██ ██      ██   ██ ██      ``"
echo "██        ███   ██   ██ █████   ██████  ███████ "
echo "██       ██ ██  ██   ██ ██      ██   ██      ██ "
echo "███████ ██   ██ ██████  ███████ ██   ██ ███████ "
echo "                                                "
echo "$DIV LxDERS Linux Desktop Environment Restoration Script"

SEARCH_SSH_PRIVATE_KEYS=`find ~/.ssh -type f \( ! -iname "*.pub" ! -iname "known_hosts*"  \)`
for SSH_KEY in $SEARCH_SSH_PRIVATE_KEYS
do
sudo chmod 600 $SSH_KEY
done

SEARCH_SSH_PUBLIC_KEYS=`find ~/.ssh/*.pub`
for SSH_KEY in $SEARCH_SSH_PUBLIC_KEYS
do
sudo chmod 644 $SSH_KEY
done

sudo chmod 700 ~/.ssh
