#!/usr/bin/env zsh
# If you come from bash you might have to change your $PATH.

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
plugins=(git kubectl docker)
source $ZSH/oh-my-zsh.sh

alias kubeval='kubeval --strict'
alias tg='terragrunt'
alias tf='terraform'

export EDITOR='vim'

export GOPATH="$HOME/dev/go"
export PATH="$GOPATH/bin:$HOME/bin:$HOME/npm/bin:$PATH"

eval $(keychain --eval -q id_rsa)

source ~/.secretsrc

alias sourceenvrc='set -a; . ./.envrc; set +a'
