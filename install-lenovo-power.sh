#!/bin/bash

if [[ "$USER" != "root" ]]; then
    echo "Error: script not running as root or with sudo! Exiting..."
    exit 1
fi

mkdir /opt/lenovopower/

cp uninstall-lenovo-power.sh /opt/lenovopower/

cp Scripts/* /opt/lenovopower/

chmod +x /opt/lenovopower/*

cp Services/* /etc/systemd/system

systemctl enable acpi_call.service
systemctl start acpi_call.service

systemctl enable lenovo-power.service
systemctl start lenovo-power.service


FILE=/usr/share/gamemode/gamemode.ini
if test -f "$FILE"; then
    cp /usr/share/gamemode/gamemode.ini /usr/share/gamemode/gamemode.ini.bak
    rm /usr/share/gamemode/gamemode.ini
    cp gamemode-patch/gamemode.ini /usr/share/gamemode/gamemode.ini
    cp /etc/sudoers /etc/sudoers.bak
    echo "mimillie ALL = (root) NOPASSWD: /opt/lenovopower/gm-lenovo-power.sh" >> /etc/sudoers
    echo "mimillie ALL = (root) NOPASSWD: /opt/lenovopower/gm-lenovo-balanced.sh" >> /etc/sudoers
fi

echo "Successfuly installed Powermanagement is controled by the service"

