export TERM="xterm-256color"
export ZSH=~/.oh-my-zsh

ZSH_THEME="awesomepanda"
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
alias gstatus='git status'
alias gadd='git add .'
alias gpush='git push origin'
alias yolo='git add . && git co -m "yolo" && git push origin main'
alias e='exit'

##########################################################
# PATH
export PATH="/users/jax/bin:/users/jax/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/users/jax/go/bin"
export NODE_PATH=$HOME/.npm-global/lib/node_modules/
export NODE_BIN=$HOME/.npm-global/bin

##########################################################
# Z CONFIGURATION
_Z_CMD="j" 
. ~/bin/z/z.sh

###########ss##############################################
# AUTOSUGGST
bindkey '^I' autosuggest-accept
source $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

export GOOGLE_APPLICATION_CREDENTIALS="/Users/jax/Dev/mypodcast/speech-to-text-soub-1-aaa239f83da9.json"

# Add JBang to environment
alias j!=jbang
export PATH="$HOME/.jbang/bin:$PATH"
