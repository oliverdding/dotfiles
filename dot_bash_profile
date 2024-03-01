# Load systemd user environment variables
export $(run-parts /usr/lib/systemd/user-environment-generators | sed '/:$/d; /^$/d' | xargs)

# kubernetes configuration
export KUBECONFIG=$(echo $(ls ~/.kube/config.d/* 2>/dev/null) | sed 's/ /:/g')

[[ -f ~/.bashrc ]] && . ~/.bashrc
