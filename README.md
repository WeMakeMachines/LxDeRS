# LxDERS

Linux Desktop Restoration Scripts (Ubuntu / Kubuntu)

## Installation

### Install Common Desktop Apps

Installs common apps and tools for the naked OS

```bash
wget https://raw.githubusercontent.com/WeMakeMachines/LxDeRS/master/install_desktop_common_apps.sh -O - | sh
```

### Install Developer Desktop Apps

Sets up the OS with common developer tools

- IDEs: Wesbtorm and Pycharm-community
- Installs node, npm (via n)
- Installs npm packages, prettier

```bash
wget https://raw.githubusercontent.com/WeMakeMachines/LxDeRS/master/install_desktop_developer_apps.sh -O - | sh
```

### Install Organisational Desktop Apps

Tools needed commonly by organisations

- Installs slack

```bash
wget https://raw.githubusercontent.com/WeMakeMachines/LxDeRS/master/install_desktop_organisation_apps.sh -O - | sh
```

## Setup

### Setup Firefox

Removes firefox snap, and installs firefox from the PPA, sets up firefox extensions

```bash
wget https://raw.githubusercontent.com/WeMakeMachines/LxDeRS/master/setup_firefox_esr.sh -O - | sh
```

### Setup SSH Keys

Scans the `~/.ssh` folder for SSH keys, modifies permissions and adds them to the `~/.bashrc` file

```bash
wget https://raw.githubusercontent.com/WeMakeMachines/LxDeRS/master/setup_ssh_keys.sh -O - | sh
```

### Setup GIT

Installs and configures GIT

```bash
wget https://raw.githubusercontent.com/WeMakeMachines/LxDeRS/master/setup_git.sh -O - | sh
```

### Setup bash

Customise bash

```bash
wget https://raw.githubusercontent.com/WeMakeMachines/LxDeRS/master/setup_bash.sh -O - | sh
```
