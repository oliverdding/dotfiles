#!/usr/bin/env bash

export KUBECONFIG=$(echo $(ls ~/.kube/config.d/* 2>/dev/null) | sed 's/ /:/g')

[[ -f ~/.bashrc ]] && . ~/.bashrc
