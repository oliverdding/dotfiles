# --- zram, see also: https://wiki.archlinux.org/title/Zram
AddPackage zram-generator # Systemd unit generator for zram devices

CopyFile /etc/systemd/zram-generator.conf

