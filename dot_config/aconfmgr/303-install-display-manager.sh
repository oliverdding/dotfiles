# see also: https://wiki.archlinux.org/title/Plasma_Login_Manager
AddPackage plasma-login-manager # Plasma Login Manager

# see also: https://wiki.archlinux.org/title/KDE_Wallet#Using_Plasma_Login_Manager_autologin_and_LUKS_encryption
CopyFile /etc/pam.d/plasmalogin-autologin

CreateLink /etc/systemd/system/display-manager.service /usr/lib/systemd/system/plasmalogin.service
