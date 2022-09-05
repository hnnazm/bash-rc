#!/usr/bin/env bash

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

export EDITOR=vim
export VISUAL=vim

export PAGER=less

export BASHDOTDIR="$XDG_CONFIG_HOME/bash"
export HISTCONTROL=ignoreboth
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file
export KEYTIMEOUT=1

export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:/usr/local/opt/openjdk/bin"

export CDPATH="$CDPATH:$XDG_CONFIG_HOME"
export CDPATH="$CDPATH:~/devspace"
export CDPATH="$CDPATH:~"

_have() {
  command -v "$1" >/dev/null 2>&1
}

if [ -d $BASHDOTDIR/scripts ]; then
  for file in $BASHDOTDIR/scripts/*; do
    source "$file"
  done
fi
