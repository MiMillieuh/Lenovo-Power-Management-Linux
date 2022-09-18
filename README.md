# Lenovo-Power-Management-Linux
A powermanagement service that restore and use acpi_call to control the computer powermanagement from lenovo

## Important :

I recomand to back-up the sudoers (`/etc/sudoers`) files as it needs permission to write acpi calls without you entering your password each time.
(it will be backed up automatically and restored at the uninstall)

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
