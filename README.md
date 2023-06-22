# LxDERS

Linux Desktop Restoration Scripts (Ubuntu / Kubuntu)

## Installation

### Install Common Desktop Apps

Installs common apps and tools for the naked OS

```bash
wget https://raw.githubusercontent.com/WeMakeMachines/LxDERS/master/install_desktop_common.sh
sudo chmod +x ./install_desktop_common_apps.sh
./install_desktop_common_apps.sh
```

### Install Developer Desktop Apps

Sets up the OS with common developer tools

- IDEs: Wesbtorm and Pycharm-community
- Installs insomnia
- Installs node, npm (via n)
- Installs npm packages, nodemon, prettier

```bash
wget https://raw.githubusercontent.com/WeMakeMachines/LxDERS/master/restore_desktop_developer.sh
sudo chmod +x ./install_desktop_developer_apps.sh
./install_desktop_developer_apps.sh
```

### Install Organisational Desktop Apps

Tools needed commonly by organisations

- Installs slack, zoom 🤮

```bash
wget https://github.com/WeMakeMachines/LxDERS/blob/master/restore_desktop_organisation.sh
sudo chmod +x ./install_desktop_organisation_apps.sh
./install_desktop_organisation_apps.sh
```

## Setup

### Setup Firefox

Removes firefox snap, and installs firefox from the PPA, sets up firefox extensions

```bash
wget https://github.com/WeMakeMachines/LxDERS/blob/master/setup_firefox_esr.sh
sudo chmod +x ./setup_firefox_esr.sh
./setup_firefox_esr.sh
```

### Setup SSH Keys

Scans the `~/.ssh` folder for SSH keys, modifies permissions and adds them to the `~/.bashrc` file

```bash
wget https://github.com/WeMakeMachines/LxDERS/blob/master/setup_ssh_keys.sh
sudo chmod +x ./setup_ssh_keys.sh
./setup_ssh_keys.sh
```

### Setup GIT

Installs and configures GIT

```bash
wget https://github.com/WeMakeMachines/LxDERS/blob/master/setup_git.sh
sudo chmod +x ./setup_git.sh
./setup_git.sh
```

### Setup bash

Customise bash

```bash
wget https://github.com/WeMakeMachines/LxDERS/blob/master/setup_bash.sh
sudo chmod +x ./setup_bash.sh
./setup_bash.sh
```
