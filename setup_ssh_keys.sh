#!/bin/bash
# LxDERS
# MODIFY SSH KEY PERMISSIONS
# SETUP BASH TO LOAD SSH KEYS
# ~/.ssh

echo ""
echo "██      ██   ██ ██████  ███████ ██████  ███████ "
echo "██       ██ ██  ██   ██ ██      ██   ██ ██      ``"
echo "██        ███   ██   ██ █████   ██████  ███████ "
echo "██       ██ ██  ██   ██ ██      ██   ██      ██ "
echo "███████ ██   ██ ██████  ███████ ██   ██ ███████ "
echo "                                                "
echo ""

# Modify SSH key permissions

echo "Modifying SSH key permissions..."

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

# Modify bash shell

echo "Setting up SSH keys..."
SSH_KEYS="ssh-add "
SEARCH_SSH_KEYS=`find ~/.ssh -type f \( ! -iname "*.pub" ! -iname "known_hosts*"  \)`
for SSH_KEY in $SEARCH_SSH_KEYS
do
SSH_KEYS+="$SSH_KEY "
done

# Modify BASH shell
cat << EOF >> ~/.bashrc
# Added by LxDERS ssh_keys

# Target all private SSH keys
$SSH_KEYS

# LxDERS end
EOF
