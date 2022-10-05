# Lenovo-Power-Management-Linux

## Important :

You'll need to add two lines in /etc/sudoers :

`yourusername ALL = (root) NOPASSWD: /opt/lenovopower/gm-lenovo-power.sh`
`yourusername ALL = (root) NOPASSWD: /opt/lenovopower/gm-lenovo-balanced.sh`

Replace yourusername by your user name.

Gamemode user, the installer will detect if you use gamemode. if that's the case it will create a gamemode.ini in `/usr/share/gamemode/gamemode.ini`
(it will be backed up automatically and restored at the uninstall)
I do recomand using gamemode but don't put any custome files in your user config or working dir. otherwise it won't launch the power mode.

## How to install :

`git clone https://github.com/MiMillieuh/Lenovo-Power-Management-Linux.git`

`cd Lenovo-Power-Management-Linux`

`sudo sh install-lenovo-power.sh`

## How to uninstall : 

`sh /opt/lenovopower/uninstall-lenovo-power.sh`

## Requirements

- Systemd
- git
- acpi-tool

## Tested on :


| Computer  | Tested distro |
| ------------- | ------------- |
| Lenovo Yoga Slim 7 Pro X | Fedora 36  |
