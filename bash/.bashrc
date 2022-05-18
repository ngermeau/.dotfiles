# Bash Setup
set -o vi                                   # Bash in vi mode 


# Path
export PATH=$PATH:/usr/local/bin            # Local/bins 
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

