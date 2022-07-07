function execute_in_intranet -a command -d "execute command in intranet"
    ssh -J devcloud -t $INTRANET_PROXY_JUMP_SERVER "exec $argv"
end
