function execute_in_devcloud -a command -d "execute command in devcloud"
    ssh -t devcloud "exec $argv"
end
