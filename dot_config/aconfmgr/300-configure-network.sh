# --- network manager, see also: https://wiki.archlinux.org/title/NetworkManager
AddPackage networkmanager # Network connection manager and user applications
AddPackage avahi # Service Discovery for Linux using mDNS/DNS-SD (compatible with Bonjour)

CopyFile /etc/NetworkManager/conf.d/20-connectivity.conf # https://wiki.archlinux.org/title/NetworkManager#Checking_connectivity
CopyFile /etc/NetworkManager/conf.d/90-dns-servers.conf # https://wiki.archlinux.org/title/NetworkManager#Custom_DNS_servers

CreateLink /etc/systemd/system/dbus-org.freedesktop.nm-dispatcher.service /usr/lib/systemd/system/NetworkManager-dispatcher.service
CreateLink /etc/systemd/system/multi-user.target.wants/NetworkManager.service /usr/lib/systemd/system/NetworkManager.service
CreateLink /etc/systemd/system/network-online.target.wants/NetworkManager-wait-online.service /usr/lib/systemd/system/NetworkManager-wait-online.service

CreateLink /etc/systemd/system/dbus-org.freedesktop.resolve1.service /usr/lib/systemd/system/systemd-resolved.service
CreateLink /etc/systemd/system/sysinit.target.wants/systemd-resolved.service /usr/lib/systemd/system/systemd-resolved.service
CreateLink /etc/systemd/system/sockets.target.wants/systemd-resolved-varlink.socket /usr/lib/systemd/system/systemd-resolved-varlink.socket
CreateLink /etc/systemd/system/sockets.target.wants/systemd-resolved-monitor.socket /usr/lib/systemd/system/systemd-resolved-monitor.socket

CreateLink /etc/systemd/system/dbus-org.freedesktop.Avahi.service /usr/lib/systemd/system/avahi-daemon.service
CreateLink /etc/systemd/system/multi-user.target.wants/avahi-daemon.service /usr/lib/systemd/system/avahi-daemon.service
CreateLink /etc/systemd/system/sockets.target.wants/avahi-daemon.socket /usr/lib/systemd/system/avahi-daemon.socket
