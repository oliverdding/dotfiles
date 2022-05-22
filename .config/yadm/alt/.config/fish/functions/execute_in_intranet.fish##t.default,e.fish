function execute_in_intranet -a command -d "execute command in intranet"
{% if yadm.hostname == "devcloud" %}
    ssh -t $INTRANET_PROXY_JUMP_SERVER "exec $argv[2..-1]"
{% else %}
    ssh -J devcloud -t $INTRANET_PROXY_JUMP_SERVER "exec $argv[2..-1]"
{% endif %}
end
