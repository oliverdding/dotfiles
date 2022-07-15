#!/usr/bin/env bash

[[ $PS1 ]] && gpg-connect-agent updatestartuptty /bye >/dev/null

[[ $PS1 && -f /usr/share/fzf/key-bindings.bash ]] && source /usr/share/fzf/key-bindings.bash

[[ $PS1 ]] && eval "$(zoxide init bash)"

[[ $PS1 ]] && eval "$(starship init bash)"
