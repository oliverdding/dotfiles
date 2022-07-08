#!/usr/bin/env sh

export DOCKER_BUILDKIT="1"

export PASSWORD_STORE_CHARACTER_SET='a-zA-Z0-9~!@#$%^&*()-_=+[]{};:,.<>?'
export PASSWORD_STORE_GENERATED_LENGTH='20'

if [[ ! -z ${SSH_AGENT_PID+x} ]]; then unset SSH_AGENT_PID; fi
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

export GPG_TTY=$(tty)
export GPG_AGENT_INFO="$(gpgconf --list-dirs agent-socket):0:1"
