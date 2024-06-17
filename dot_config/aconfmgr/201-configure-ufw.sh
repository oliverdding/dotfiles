# --- ufw, see also: https://wiki.archlinux.org/title/Uncomplicated_Firewall
AddPackage ufw # Uncomplicated and easy to use CLI tool for managing a netfilter firewall

CopyFile /etc/ufw/ufw.conf
CopyFile /etc/ufw/user.rules
CopyFile /etc/ufw/user6.rules

systemctl enable ufw.service
