## load zgen
source "${HOME}/.zgen/zgen.zsh"

## if the init scipt doesn't exist
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

# Flutter
export PATH="$PATH:$HOME/src/flutter/bin"

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

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$HOME/.rvm/bin:$PATH"


# make less better and more colorful

export LESS='--quit-if-one-screen --ignore-case --status-column --LONG-PROMPT --RAW-CONTROL-CHARS --HILITE-UNREAD --tabs=4 --no-init --window=-4'

# Set colors for less. Borrowed from https://wiki.archlinux.org/index.php/Color_output_in_console#less .
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

# Brew-based OpenSSL
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"
export PATH="/usr/local/sbin:$PATH"
