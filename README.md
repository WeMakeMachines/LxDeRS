# LxDERS

Linux Desktop Restoration Scripts (Ubuntu / Kubuntu 22.04)

## Restore Common Desktop Requirements

Highlights:
- remove firefox snap and install firefox from apt
- installs flatpak, chromium, inkscape, joplin...

```bash
wget https://raw.githubusercontent.com/WeMakeMachines/LxDERS/master/restore_desktop_common.sh
sudo chmod +x ./restore_desktop_common.sh
./restore_desktop_common.sh
```

## Restore Developer Desktop Requirements

Highlights:
- Install GIT and configure GIT
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

Highlights:
- Installs slack, zoom 🤮

```bash
wget https://github.com/WeMakeMachines/LxDERS/blob/master/restore_desktop_organisation.sh
sudo chmod +x ./restore_desktop_organisation.sh
./restore_desktop_organisation.sh
```
