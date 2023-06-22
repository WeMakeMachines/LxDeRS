# LxDERS

Linux Desktop Restoration Scripts (Ubuntu / Kubuntu 22.04)

## Restore Common Desktop Requirements

Installs common apps and tools for the naked OS

```bash
wget https://raw.githubusercontent.com/WeMakeMachines/LxDERS/master/restore_desktop_common.sh
sudo chmod +x ./restore_desktop_common.sh
./restore_desktop_common.sh
```

## Restore Developer Desktop Requirements

Sets up the OS with common developer tools

Highlights:
- Install and configure GIT
- IDEs: Wesbtorm and Pycharm-community
- Installs insomnia
- Installs node, npm (via n)
- Installs npm packages, nodemon, prettier
- Setup SSH keys in `.bashrc`
- Alias python to python3 command

```bash
wget https://raw.githubusercontent.com/WeMakeMachines/LxDERS/master/restore_desktop_developer.sh
sudo chmod +x ./restore_desktop_developer.sh
./restore_desktop_developer.sh
```

## Restore Organisational Desktop Requirements

Tools needed commonly by organisations

Highlights:
- Installs slack, zoom 🤮

```bash
wget https://github.com/WeMakeMachines/LxDERS/blob/master/restore_desktop_organisation.sh
sudo chmod +x ./restore_desktop_organisation.sh
./restore_desktop_organisation.sh
```

## Setup Firefox

Removes firefox snap, and installs firefox from the PPA, sets up firefox extensions

```bash
wget https://github.com/WeMakeMachines/LxDERS/blob/master/setup_firefox_esr.sh
sudo chmod +x ./setup_firefox_esr.sh
./setup_firefox_esr.sh
```

## Setup SSH Keys

Scans the `~/.ssh` folder for SSH keys, modifies permissions and adds them to the `~/.bashrc` file

```bash
wget https://github.com/WeMakeMachines/LxDERS/blob/master/setup_ssh_keys.sh
sudo chmod +x ./setup_ssh_keys.sh
./setup_ssh_keys.sh
```