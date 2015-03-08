export EDITOR='subl -w'

[ -f ${HOME}/.bashrc ] && source ${HOME}/.bashrc
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

PS1='[ \[\e[0;96m\]\t\]-\e[1;95m\]\h \e[0;92m\]\]\w\e[0;93m\]$(parse_git_branch)\e[00m\] ]\n$ '

alias se="ps ax | grep"
alias seu="ps aux | grep"
alias c="cd ~/Engineering/code"
alias own="c && cd own-work"
alias be="bundle exec"


PATH=/usr/local/share/npm/bin:$PATH
PATH=/usr/local/bin/npm/lib:$PATH

export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

eval "$(rbenv init -)"
export PATH=/usr/local/sbin:$PATH

export HISTTIMEFORMAT="[%F %T] "

## DOCKER

export DOCKER_HOST=tcp://192.168.99.100:2376
export DOCKER_MACHINE_NAME=default
export DOCKER_TLS_VERIFY=1
export DOCKER_CERT_PATH=/Users/samjohnson/.docker/machine/machines/default
export PGDATABASE='postgres'
