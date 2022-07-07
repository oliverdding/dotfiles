set -q SSH_AGENT_PID && unset SSH_AGENT_PID
set -gx SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
set -gx GPG_TTY (tty)
set -gx GPG_AGENT_INFO "$(gpgconf --list-dirs agent-socket):0:1"
gpg-connect-agent updatestartuptty /bye >/dev/null
