set -gx QAPM_HOME "$HOME/Developer/QAPM"
{% if yadm.hostname == "devcloud" %}
set -gx INTRANET_PROXY_JUMP_SERVERS ''
set -gx TMF_PROXY_JUMP_SERVERS 'mixed-main-22'
{% else %}
set -gx INTRANET_PROXY_JUMP_SERVERS 'devcloud'
set -gx TMF_PROXY_JUMP_SERVERS 'devcloud,mixed-main-22'
{% endif %}
