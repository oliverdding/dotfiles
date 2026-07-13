# see also: https://wiki.archlinux.org/title/Plasma_Login_Manager
AddPackage plasma-login-manager # Plasma Login Manager

CreateLink /etc/systemd/system/display-manager.service /usr/lib/systemd/system/plasmalogin.service
