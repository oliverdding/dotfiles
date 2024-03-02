source $HOME/.config/fzf/completion.bash

_fzf_complete_ssh_notrigger() {
    FZF_COMPLETION_TRIGGER='' _fzf_host_completion
}

complete -o bashdefault -o default -F _fzf_complete_ssh_notrigger ssh
complete -o bashdefault -o default -F _fzf_complete_ssh_notrigger mosh
complete -o bashdefault -o default -F _fzf_complete_ssh_notrigger ss

eval "$(k9s completion bash)"
eval "$(kubectl completion bash)"
eval "$(helm3 completion bash)"
eval "$(kind completion bash)"
