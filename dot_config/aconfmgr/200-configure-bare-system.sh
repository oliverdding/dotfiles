# --- timezone, see also: https://wiki.archlinux.org/title/System_time#Time_zone
CreateLink /etc/localtime /usr/share/zoneinfo/Asia/Shanghai

# --- locale, see also: https://wiki.archlinux.org/title/Locale
CopyFile /etc/locale.conf
CopyFile /etc/locale.gen

# --- profiles, setting system configuration that should be set at bash initialization
CopyFile /etc/profile.d/10-xdg-base.sh
CopyFile /etc/profile.d/20-path.sh
CopyFile /etc/profile.d/30-gpg-agent.sh
CopyFile /etc/profile.d/40-bash-completion.sh

# --- pacman, setting mirror
CopyFile /etc/pacman.d/mirrorlist # aliyun mirror, see also: https://developer.aliyun.com/mirror/archlinux

CopyFile /etc/pacman.conf # archlinuxcn for aliyun mirror, see also: https://developer.aliyun.com/mirror/archlinuxcn/
AddPackage archlinuxcn-keyring # Arch Linux CN PGP keyring

# --- sshd
CopyFile /etc/ssh/sshd_config.d/50-development.conf

# --- sudo
CopyFile /etc/sudoers.d/99_wheel

# --- journald, see also: https://man.archlinux.org/man/journald.conf.5.en
CopyFile /etc/systemd/journald.conf.d/override.conf

CreateLink /etc/systemd/system/getty.target.wants/getty@tty1.service /usr/lib/systemd/system/getty@.service
CreateLink /etc/systemd/system/multi-user.target.wants/remote-fs.target /usr/lib/systemd/system/remote-fs.target
