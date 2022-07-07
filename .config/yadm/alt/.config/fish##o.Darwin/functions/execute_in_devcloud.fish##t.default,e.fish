function execute_in_devcloud -a command -d "execute command in devcloud"
{% if yadm.hostname == "devcloud" %}
    exec $argv
{% else %}
    ssh -t devcloud "exec $argv"
{% endif %}
end
