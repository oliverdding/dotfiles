# bluetooth, see also: https://wiki.archlinux.org/title/bluetooth
AddPackage bluez # Daemons for the bluetooth protocol stack
AddPackage bluez-utils # Development and debugging utilities for the bluetooth protocol stack

systemctl enable bluetooth.service
