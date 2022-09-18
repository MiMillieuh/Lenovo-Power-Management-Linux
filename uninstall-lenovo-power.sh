#!/bin/bash

if [[ "$USER" != "root" ]]; then
    echo "Error: script not running as root or with sudo! Exiting..."
    exit 1
fi

systemctl disable acpi_call.service
systemctl stop acpi_call.service

systemctl disable lenovo-power.service
systemctl stop lenovo-power.service

rm -rf /opt/lenovopower/

rm /etc/systemd/system/acpi_call.service
rm /etc/systemd/system/lenovo-power.service




FILE=/usr/share/gamemode/gamemode.ini
if test -f "$FILE"; then
    rm /usr/share/gamemode/gamemode.ini
    cp /usr/share/gamemode/gamemode.ini.bak /usr/share/gamemode/gamemode.ini
    rm /usr/share/gamemode/gamemode.ini.bak
    rm /etc/sudoers
    cp /etc/sudoers.bak /etc/sudoers
    rm /etc/sudoers.bak
fi


echo "Successfuly uninstalled"

