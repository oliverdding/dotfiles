set -gx PASSWORD_STORE_CHARACTER_SET 'a-zA-Z0-9~!@#$%^&*()-_=+[]{};:,.<>?'
set -gx PASSWORD_STORE_GENERATED_LENGTH '20'
set -gx GOPATH "$HOME/.local/share/go"
{% if yadm.os == "Darwin" %}
set -gx JAVA_HOME '/Library/Java/JavaVirtualMachines/openjdk8-zulu/Contents/Home/'
{% endif %}
set -gx KUBECONFIG (echo (ls ~/.kube/config.d/* 2>/dev/null) | sed 's/ /:/g')
set -gx MCFLY_KEY_SCHEME vim
set -gx MCFLY_FUZZY 2
set -gx MCFLY_RESULTS 50
{% if yadm.os == "Darwin" %}
if test (defaults read -g AppleInterfaceStyleSwitchesAutomatically 2>/dev/null) = 1
    defaults read -g AppleInterfaceStyle 2>/dev/null
    if test $status = 1
        set -gx MCFLY_LIGHT TRUE
    end
else
    if test (defaults read -g AppleInterfaceStyle 2>/dev/null) != "Dark"
        set -gx MCFLY_LIGHT TRUE
    end
end
{% endif %}
set -gx FZF_DEFAULT_COMMAND "fd --type file --follow --hidden --exclude .git --color=always"
set -gx FZF_DEFAULT_OPTS "--ansi"
set -gx FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"
