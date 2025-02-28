# https://wiki.archlinux.org/title/GnuPG#Set_SSH_AUTH_SOCK
unset SSH_AGENT_PID
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

export GPG_AGENT_INFO="$(gpgconf --list-dirs agent-socket):0:1"
