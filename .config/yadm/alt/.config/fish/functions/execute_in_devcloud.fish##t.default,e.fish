function execute_in_devcloud -a command -d "execute command in devcloud"
    {% if yadm.hostname == "devcloud" %}
    exec $argv[2..-1]
    {% else %}
    ssh -t devcloud "exec $argv[2..-1]"
    {% endif %}
end
