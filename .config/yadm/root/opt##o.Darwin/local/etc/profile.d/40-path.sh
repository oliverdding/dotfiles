#!/usr/bin/env sh

export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$CARGO_HOME/bin:$PATH
export PATH=$GOPATH/bin:$PATH
export PATH=$(ls -1dD $HOME/Library/Python/* 2>/dev/null | sed 's#$#/bin#'):$PATH
export PATH=${XDG_DATA_HOME}/npm/bin:$PATH
