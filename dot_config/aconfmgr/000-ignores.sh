# ignores boot partition since every system contains it's own configuration
IgnorePath '/boot/*'

# ignores btrfs snapshots
IgnorePath '/.snapshots/*'
IgnorePath '/snapshots/*'

# directories for working pod
IgnorePath '/data/*'
IgnorePath '/cfs/*'

# some system independent configuration files
IgnorePath '/etc/mkinitcpio.conf'
IgnorePath '/etc/mkinitcpio.d/*'
IgnorePath '/etc/NetworkManager/system-connections/*' # some network connnections
IgnorePath '/etc/fstab'
IgnorePath '/etc/subuid' # podman relative files
IgnorePath '/etc/subuid-' # podman relative files
IgnorePath '/etc/subgid' # podman relative files
IgnorePath '/etc/subgid-' # podman relative files
IgnorePath '/etc/.updated'
IgnorePath '/etc/.pwd.lock'
IgnorePath '/etc/ca-certificates/*'
IgnorePath '/etc/cni'
IgnorePath '/etc/hostname'
IgnorePath '/etc/hosts'
IgnorePath '/etc/ld.so.cache'
IgnorePath '/etc/machine-id'
IgnorePath '/etc/os-release'
IgnorePath '/etc/pacman.d/gnupg/*'
IgnorePath '/etc/shells'
IgnorePath '/etc/ssl/certs/*'
IgnorePath '/etc/lvm/*'
IgnorePath '/etc/passwd'
IgnorePath '/etc/passwd-'
IgnorePath '/etc/shadow'
IgnorePath '/etc/shadow-'
IgnorePath '/etc/group'
IgnorePath '/etc/group-'
IgnorePath '/etc/gshadow'
IgnorePath '/etc/gshadow-'
IgnorePath '/etc/pki/*'
IgnorePath '/etc/light*'
IgnorePath '/etc/ssh/ssh_host_*'
IgnorePath '/etc/resolv.conf'
IgnorePath '/etc/fonts'
IgnorePath '/etc/vconsole.conf'
IgnorePath '/etc/X11'
IgnorePath '/etc/sddm.conf.d/kde_settings.conf' # kde auto login settings for sddm

# system directories for temporary files
IgnorePath '/lost+found'
IgnorePath '/lost+found/*'
IgnorePath '/var/*'

# system directories for huge software, which should not be included
IgnorePath '/opt/*'

# ignores binary fiels
IgnorePath '/usr/bin/*'
IgnorePath '/usr/lib/*'
IgnorePath '/usr/share/*'

# ArchWSL files, see also: https://github.com/yuk7/ArchWSL
IgnorePath '/init'
IgnorePath '/version'
IgnorePath '/pkglist.*.txt'
IgnorePath '/etc/wsl.conf'
IgnorePath '/etc/ld.so.conf.d/*'

IgnorePath '*.bak'
IgnorePath '*.sbak'
IgnorePath '*.pacnew'
IgnorePath '*.pacsave'
