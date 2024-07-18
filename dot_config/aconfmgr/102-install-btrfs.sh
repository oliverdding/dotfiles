AddPackage btrfs-assistant # An application for managing BTRFS subvolumes and Snapper snapshots
AddPackage btrfs-progs # Btrfs filesystem utilities
AddPackage compsize # Calculate compression ratio of a set of files on Btrfs
AddPackage snapper # A tool for managing BTRFS and LVM snapshots. It can create, diff and restore snapshots and provides timelined auto-snapping.

CopyFile /etc/conf.d/snapper
CopyFile /etc/snapper/configs/root 640

CreateLink /etc/systemd/system/timers.target.wants/snapper-boot.timer /usr/lib/systemd/system/snapper-boot.timer
CreateLink /etc/systemd/system/timers.target.wants/snapper-cleanup.timer /usr/lib/systemd/system/snapper-cleanup.timer
CreateLink /etc/systemd/system/timers.target.wants/snapper-timeline.timer /usr/lib/systemd/system/snapper-timeline.timer
