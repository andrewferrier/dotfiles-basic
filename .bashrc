if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
fi

set -o vi
export EDITOR=vim
export VISUAL=vim
