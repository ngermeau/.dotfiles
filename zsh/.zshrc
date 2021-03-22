export ZSH=~/.oh-my-zsh
export TERM="xterm-256color"

ZSH_THEME="af-magic"
source $ZSH/oh-my-zsh.sh

#########################################################
# ZSH BASIC CONFIGURATION 
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd/mm/yyyy"

#########################################################
# VIM SETUP 
bindkey -v
stty start undef stop undef   #disable terminal flow control (allow C-q to quit in vim)
bindkey -M viins 'jj' vi-cmd-mode

##########################################################
# ALIAS 
alias h='history' 
alias v='vim'
alias g='git'
alias yolo='git add . && git co' 
alias e='exit'

##########################################################
# PATH
export PATH="/home/nicolas/Bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"
export PATH="$HOME/.rbenv/shims:$PATH"
export NODE_PATH=$HOME/.npm-global/lib/node_modules/
export NODE_BIN=$HOME/.npm-global/bin

##########################################################
# Z CONFIGURATION
_Z_CMD="j" 
. ~/Bin/z/z.sh

##########################################################
# AUTOSUGGEST
bindkey '^n' autosuggest-accept
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
