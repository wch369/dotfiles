set -o vi

alias vi='vim'
alias ls='ls --color=auto'
alias rm='rm -i'
alias e.='explorer.exe .'
alias wiki='vim -c "VimwikiIndex"'

PS1='\u:\w>>'
export PS1



#================== JDK ====================#
export JAVA_HOME=$HOME/jdk
export JRE_HOME=$JAVA_HOME/jre
export PATH=.:$JAVA_HOME/bin:$JRE_HOME/bin:$PATH
#================== JDK ====================#

#sh ~/bin/shelltool/upload_class.sh

