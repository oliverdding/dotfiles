#!/usr/bin/env bash

function help {
    echo -e "Open specified man page in Preview.app.\nUsage: $0 [entry]"
}

[[ $# -eq 0 ]] && {
    error "No arguments given."
    help
    exit 1
}

man -t $@ | open -f -a Preview
