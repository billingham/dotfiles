alias h='history'
alias fh='history | grep $1' #Requires one input

alias ztr='tar -czvf $1 $2' #create a tarball
alias zls='tar -tzf $1' #ls a tarball
alist zun='tar -xzvf $1' #extract a tarball

alias ls='ls -G -a'
alias ..='cd ..'
alias ...='cd .. ; cd ..'
alias _='cd -'
alias home='cd ~'

function mkd {
	mkdir $1;
	cd $1;
}


# GIT
alias g='git'
alias ga="git add"
alias gb='git branch --verbose'
alias gc='git commit --verbose'
alias gca='git commit --verbose --all'
alias gco="git checkout"
alias gd='git diff --ignore-space-change'
alias gk='gitk &'
alias gull='git pull'
alias gm="git merge"
alias gush='git push'
#alias gs="git stash"
alias gx="gitx"

function gco {
  if [ -z "$1" ]; then
    git checkout master
  else
    git checkout $1
  fi
}

function st {
  if [ -d ".svn" ]; then
    svn status
  else
    git status
  fi
}