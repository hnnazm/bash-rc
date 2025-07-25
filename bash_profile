#!/usr/bin/env bash

export LANG=en_US.UTF-8

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

export EDITOR=vim
export VISUAL=vim

export PAGER=less

export BASHDOTDIR="$XDG_CONFIG_HOME/bash"
export KEYTIMEOUT=1

export HISTCONTROL=ignoreboth
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

# written to disk immediately (history -a).
# cleared from memory to avoid duplication (history -c).
# reloaded from the shared history file (history -r).
export PROMPT_COMMAND='history -a; history -c; history -r'


#export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:/usr/local/go/bin"
#export PATH="$PATH:/usr/local/opt/openjdk/bin"

export CDPATH="$CDPATH:$XDG_CONFIG_HOME"
export CDPATH="$CDPATH:~/devspace"
export CDPATH="$CDPATH:~"

_have() {
  command -v "$1" >/dev/null 2>&1
}

scripts=(
  "${BASHDOTDIR}/scripts/prompt"
  "${BASHDOTDIR}/scripts/alias"
  "${BASHDOTDIR}/scripts/env"
  "${BASHDOTDIR}/scripts/homebrew"
  "${BASHDOTDIR}/scripts/ripgrep"
  "${BASHDOTDIR}/scripts/fzf"
  "${BASHDOTDIR}/scripts/extract"
  "${BASHDOTDIR}/scripts/podman"
  "${BASHDOTDIR}/scripts/docker-nginx"
  "${BASHDOTDIR}/scripts/nvm"
  "${BASHDOTDIR}/scripts/gpt"
  "${BASHDOTDIR}/scripts/go"
  "${BASHDOTDIR}/scripts/curl"
  "${BASHDOTDIR}/scripts/copilot"
  "${BASHDOTDIR}/scripts/copilot"
  "${BASHDOTDIR}/scripts/cdtemp"
  "${BASHDOTDIR}/scripts/bitwarden"
)

for file in "${scripts[@]}"; do
  if [[ -e "${file}" ]]; then
    source "$file"
  else
    echo "File not found: ${file}"
  fi
done
