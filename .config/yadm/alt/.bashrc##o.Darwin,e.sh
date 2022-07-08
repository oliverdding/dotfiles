#!/usr/bin/env bash

[[ $PS1 ]] && [[ -f /opt/local/etc/profile ]] && . /opt/local/etc/profile

[[ $PS1 ]] && gpg-connect-agent updatestartuptty /bye >/dev/null

[[ $PS1 ]] && source /opt/local/share/fzf/shell/key-bindings.bash

[[ $PS1 ]] && eval "$(zoxide init bash)"

[[ $PS1 ]] && eval "$(starship init bash)"
