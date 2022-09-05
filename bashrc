#!/usr/bin/env bash

test -e /etc/bashrc && source /etc/bashrc

case $- in
  *i*);;  # interactive
  *)return ;;
esac

set -o vi

shopt -s checkwinsize
shopt -s histappend

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
