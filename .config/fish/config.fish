set -q SSH_AGENT_PID && unset SSH_AGENT_PID
set -gx SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
set -gx GPG_TTY (tty)
gpg-connect-agent updatestartuptty /bye >/dev/null
