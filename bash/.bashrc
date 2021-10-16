# Oh-my-bash Setup
export OSH=/home/jax/.oh-my-bash
OSH_THEME="bakke"                            # Oh-my-bash theme
DISABLE_UNTRACKED_FILES_DIRTY="true"        # Avoid marking untracked files as dirty (performance)
source $OSH/oh-my-bash.sh

completions=(                               # Completion selection
  git
)

plugins=(                                   # Plugins selection
  git
  bashmarks
)

# Bash Setup
set -o vi                                   # Bash in vi mode 

# Env Variables 
export TERM="xterm-256color"                # Nice colors bro
export MYBINS=~/.dotfiles/bin               # my usefull bins
export JAVA_HOME=~/Bin/jdk1.8.0_291         # Java Home

# Path
export PATH=$PATH:/opt/mssql-tools/bin      # Mssql 
export PATH=$PATH:~/Bin                     # My Tools
export PATH=$PATH:$MYBINS                   # My Bins
export PATH=$JAVA_HOME/bin:$PATH            # Java


# Z Setup 
export _Z_CMD="j"                           # Z Configuration
. $MYBINS/z.sh                              # source z script 

# Alias 
alias h=history
alias e=exit

