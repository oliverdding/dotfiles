# sddm, see also: https://wiki.archlinux.org/title/SDDM
AddPackage sddm # QML based X11 and Wayland display manager
AddPackage sddm-kcm # KDE Config Module for SDDM

CreateFile /etc/sddm.conf > /dev/null
CopyFile /etc/sddm.conf.d/10-wayland.conf # https://wiki.archlinux.org/title/SDDM#KDE_Plasma_/_KWin
