# Define a few Color's
LIGHTGREEN='\e[1;32m'
LIGHTBLUE='\e[36m'
NC='\e[0m'              # No Color


PATH=$PATH:$HOME/bin:/usr/local/bin:/opt/local/bin

SHELL=/bin/bash

if [ -f ~/.git-completion.bash ]; then
	source .git-completion.bash
	export PS1="${LIGHTBLUE}\w${LIGHTGREEN}"' $(__git_ps1 "(%s)")'"\n\r${NC}#> "
fi

export EDITOR='mate -w'
export HISTFILESIZE=10000 # the bash history should save 3000 commands
export HISTCONTROL=ignoredups #don't put duplicate lines in the history.


if [ -f ~/.amazon_keys ]; then
   source ~/.amazon_keys
fi

if [ -f ~/.bash_aliases ]; then
   source ~/.bash_aliases
fi




bind "set completion-ignore-case on"



extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)  tar xjf $1      ;;
            *.tar.gz)   tar xzf $1      ;;
            *.bz2)      bunzip2 $1      ;;
            *.rar)      unrar x $1      ;;
            *.gz)       gunzip $1       ;;
            *.tar)      tar xf $1       ;;
            *.tbz2)     tar xjf $1      ;;
            *.tgz)      tar xzf $1      ;;
            *.zip)      unzip $1        ;;
            *.Z)        uncompress $1   ;;
            *)          echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}




# WELCOME SCREEN
#######################################################

clear;
date;
echo -ne "${LIGHTGREEN}<voice type='creepy'>${LIGHTBLUE}WHAT ARE YOU DOING DAVE?${LIGHTGREEN}</voice>${NC}"; 
echo "";

