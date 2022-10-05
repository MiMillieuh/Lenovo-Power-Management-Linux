#!/bin/bash


rm -rf /opt/lenovopower/block.mimifile

if [[ $(acpi -a) == "Adapter 0: on-line" ]]; then
TARGET=0
else
TARGET=2
fi
case $TARGET in
    0)
        sudo sh -c "powerprofilesctl set balanced"
        ;;
    1)
        sudo sh -c "powerprofilesctl set performance"
        ;;
    2)
        sudo sh -c "powerprofilesctl set power-saver"
        ;;
esac
