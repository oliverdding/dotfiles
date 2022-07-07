#!/usr/bin/env bash

gpg-connect-agent updatestartuptty /bye >/dev/null

[[ $PS1 ]] && source /usr/share/fzf/key-bindings.bash

[[ $PS1 ]] && eval "$(zoxide init bash)"

[[ $PS1 ]] && eval "$(starship init bash)"
