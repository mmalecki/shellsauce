#!/usr/bin/env zsh
# If you come from bash you might have to change your $PATH.

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export EDITOR='vim'
export PATH="$HOME/bin:$HOME/npm/bin:$PATH"

eval $(keychain --eval -q id_rsa)

source .secretsrc
