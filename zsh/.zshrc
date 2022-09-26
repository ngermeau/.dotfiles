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
alias vim='nvim'
alias v='nvim'
alias g='git'
alias yolo='git add . && git co -m "yolo" && git push origin main'
alias e='exit'

##########################################################
# PATH
export PATH="/home/nicolas/Bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"
export NODE_PATH=$HOME/.npm-global/lib/node_modules/
export NODE_BIN=$HOME/.npm-global/bin

##########################################################
# Z CONFIGURATION
_Z_CMD="j" 
. ~/bin/z/z.sh

###########ss##############################################
# AUTOSUGGST
bindkey '^n' autosuggest-accept
source $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
