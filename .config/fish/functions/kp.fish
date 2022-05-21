function kp -d "kubectl on proxy jump server"
    if test INTRANET_PROXY_JUMP_SERVERS = ''
        kubectl $argv
    else
        ssh -t $INTRANET_PROXY_JUMP_SERVERS "exec kubectl $argv"
    end
end
