# --- network manager, see also: https://wiki.archlinux.org/title/NetworkManager
AddPackage networkmanager # Network connection manager and user applications

CopyFile /etc/NetworkManager/conf.d/20-connectivity.conf # https://wiki.archlinux.org/title/NetworkManager#Checking_connectivity
CopyFile /etc/NetworkManager/conf.d/90-dns-servers.conf # https://wiki.archlinux.org/title/NetworkManager#Custom_DNS_servers

systemctl enable NetworkManager.service
