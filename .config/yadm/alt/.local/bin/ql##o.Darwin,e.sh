#!/usr/bin/env bash

function help {
    echo -e "Quick Look a specified file or directory.\nUsage: $0 [entry]"
}

[[ $# -eq 0 ]] && {
    error "No arguments given."
    help
    exit 1
}

qlmanage >/dev/null 2>/dev/null -p $@ &
