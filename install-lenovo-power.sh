#!/bin/sh

if [[ "$USER" != "root" ]]; then

    exit 1
fi


userinhome=$(ls /home/)

mkdir /opt/lenovopower/

cp uninstall-lenovo-power.sh /opt/lenovopower/

cp Scripts/* /opt/lenovopower/

chmod +x /opt/lenovopower/*

cp Services/* /etc/systemd/system

systemctl enable lenovo-power.service
systemctl start lenovo-power.service


FILE=/usr/share/gamemode/gamemode.ini
if test -f "$FILE"; then
    cp /usr/share/gamemode/gamemode.ini /usr/share/gamemode/gamemode.ini.bak
    rm /usr/share/gamemode/gamemode.ini
    cp gamemode-patch/gamemode.ini /usr/share/gamemode/gamemode.ini
fi

echo "Successfuly installed Powermanagement is controled by the service for the account $userinhome"
echo ""
echo ""
echo "To have gamemode working you have to modify manually the sudoers file in /etc/sudoers and add these two lines :"
echo ""
echo ""
echo "yourusername ALL = (root) NOPASSWD: /opt/lenovopower/gm-lenovo-power.sh"
echo "yourusername ALL = (root) NOPASSWD: /opt/lenovopower/gm-lenovo-balanced.sh"

