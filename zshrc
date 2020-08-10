#!/usr/bin/env zsh
# If you come from bash you might have to change your $PATH.

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
plugins=(git kubectl docker gcloud aws history-substring-search)
source $ZSH/oh-my-zsh.sh

bindkey "^P" history-substring-search-up
bindkey "^N" history-substring-search-up

alias kubeval='kubeval --strict'
alias datesf='TZ="America/Los_Angeles" date'
alias tg='terragrunt'
alias tf='terraform'
alias vim='nvim'

export EDITOR='nvim'

export GOPATH="$HOME/dev/go"
export PATH="$HOME/.tfenv/bin:$GOPATH/bin:$HOME/bin:$HOME/npm/bin:$HOME/.tgenv/bin:$HOME/.cargo/bin:$HOME/.istioctl/bin:$PATH"

which keychain > /dev/null && eval $(keychain --eval -q id_rsa)

[ -f ~/.secretsrc ] && source ~/.secretsrc

alias sourceenvrc='set -a; . ./.envrc; set +a'
alias sourceenv='set -a; . ./.env; set +a'
