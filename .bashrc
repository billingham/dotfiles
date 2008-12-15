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

export EDITOR=/user/bin/mate
export HISTFILESIZE=10000 # the bash history should save 3000 commands
export HISTCONTROL=ignoredups #don't put duplicate lines in the history.


if [ -f ~/.amazon_keys ]; then
   source ~/.amazon_keys
fi

 


alias hist='history | grep $1' #Requires one input

alias ztr='tar -czvf $1 $2' #create a tarball
alias zls='tar -tzf $1' #ls a tarball
alist zun='tar -xzvf $1' #extract a tarball

alias ..='cd ..'
alias ...='cd .. ; cd ..'
alias _='cd -'
alias home='cd ~'
alias ebrc='mate -w ~/.bashrc'

alias lc=ls
alias l="ls -l"
alias ls="ls -ila"

# GIT
alias gs='git status'
alias ga='git add'
alias grm='git rm'
alias gc='git commit -a'
alias gmv='git mv'
alias gd='git diff'
alias git_remove_missing_files="gs | awk '/deleted:(.*)/ {print $3}' | xargs git rm"
alias gcm='git commit -m'
alias gp='git push'
alias gbr='git checkout -b'

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
echo -ne "${LIGHTGREEN} HELLO DAVE!${NC} < creepy voice"; 
echo ""; 
echo "";

