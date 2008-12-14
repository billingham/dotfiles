#. ~/.bashrc
#ENV=$HOME/.bashrc
#export ENV

# Setting PATH for MacPython 2.5
# The orginal version is saved in .bash_profile.pysave
export PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:${PATH}" 

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

