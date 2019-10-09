# load zgen
source "${HOME}/.zgen/zgen.zsh"

# if the init scipt doesn't exist
if ! zgen saved; then

  # specify plugins here
  zgen oh-my-zsh
  zgen oh-my-zsh themes/robbyrussell
  zgen oh-my-zsh plugins/git
  # generate the init script from plugins above
  zgen save
fi

export TERM=xterm-256color

# General
export PATH="$HOME/bin:$PATH"

# Disable autocorrect
unsetopt correct

# Use vim
export EDITOR=/usr/bin/vim

# Go
export GOPATH="$HOME/go"
export PATH="$(go env GOROOT)/bin:$GOPATH/bin:$PATH"

# Python
# export PATH="$(python3 -m site --user-base)/bin:$PATH"
# alias prp="pipenv run python"

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias gd='git diff'
alias gs='git status'
alias gl='git log'

setopt no_share_history

[ -f $HOME/.secrets ] && source $HOME/.secrets
