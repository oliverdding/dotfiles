AddPackage btrfs-assistant # An application for managing BTRFS subvolumes and Snapper snapshots
AddPackage btrfs-progs # Btrfs filesystem utilities
AddPackage compsize # Calculate compression ratio of a set of files on Btrfs
AddPackage snapper # A tool for managing BTRFS and LVM snapshots. It can create, diff and restore snapshots and provides timelined auto-snapping.

CopyFile /etc/conf.d/snapper
CopyFile /etc/snapper/configs/root 640

systemctl enable snapper-boot.timer
systemctl enable snapper-cleanup.timer
systemctl enable snapper-timeline.timer
