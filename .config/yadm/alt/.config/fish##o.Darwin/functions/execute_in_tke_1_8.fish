function execute_in_tke_1_8 -a command -d "execute command in tke1.8"
    ssh -J devcloud,$INTRANET_PROXY_JUMP_SERVER -t $TKE_1_8_PROXY_JUMP_SERVER "exec $argv"
end
