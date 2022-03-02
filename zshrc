#!/usr/bin/env zsh
# If you come from bash you might have to change your $PATH.

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
plugins=(git kubectl docker gcloud aws history-substring-search)
source $ZSH/oh-my-zsh.sh

bindkey "^P" history-substring-search-up
bindkey "^N" history-substring-search-down

alias kubeval='kubeval --strict'
alias datesf='TZ="America/Los_Angeles" date'
alias tg='terragrunt'
alias tf='terraform'
alias vim='nvim'
alias cdg='cd $(git rev-parse --show-toplevel)'

# Courtesy of https://stackoverflow.com/a/58117444.
alias kgsv='kubectl get secret -o go-template="{{range \$k, \$v := .data}}{{printf \"%s: \" \$k}}{{if not \$v}}{{\$v}}{{else}}{{\$v | base64decode}}{{end}}{{\"\n\"}}{{end}}"'

export EDITOR='nvim'

export GOPATH="$HOME/dev/go"
export PATH="$HOME/.tfenv/bin:$GOPATH/bin:$HOME/bin:$HOME/npm/bin:$HOME/.tgenv/bin:$HOME/.cargo/bin:$HOME/.istioctl/bin:$PATH"

if which keychain > /dev/null; then
  [ -f .ssh/id_rsa ] && eval $(keychain --eval -q id_rsa)
  [ -f .ssh/id_ed25519 ] && eval $(keychain --eval -q id_ed25519)
fi

[ -f ~/.secretsrc ] && source ~/.secretsrc

alias sourceenvrc='set -a; . ./.envrc; set +a'
alias sourceenv='set -a; . ./.env; set +a'
