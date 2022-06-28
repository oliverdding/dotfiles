function execute_in_intranet -a command -d "execute command in intranet"
    {% if yadm.hostname == "devcloud" %}
    ssh -J $INTRANET_PROXY_JUMP_SERVER -t $TKE_1_8_PROXY_JUMP_SERVER "exec $argv"
    {% else %}
    ssh -J devcloud,$INTRANET_PROXY_JUMP_SERVER -t $TKE_1_8_PROXY_JUMP_SERVER "exec $argv"
    {% endif %}
end
