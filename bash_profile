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
alias p="cd ~/projects"
alias own="p && cd own-work"
alias fca="p && cd funding_circle_app"
alias fe="p && cd fca-frontend"

alias be="bundle exec"

alias bil="be rails s"
alias ce="CODAS_ENV=development rackup -p 4567"
alias alp="./bin/rails s -p 3001"

alias update-alpaca="p && cd alpaca && git stash && git co master && git fetch -p && git pull && bundle"
alias update-bilcas="p && cd bilcas && git stash && git co master && git fetch -p && git pull && bundle"
alias update-codas="p && cd codas && git stash && git co master && git fetch -p && git pull && bundle"
alias update-fe="fe && git stash && git co master && git fetch -p && git pull && bundle"
alias update-fca="fca && git stash && git co production && git fetch -p && git pull && bundle"
alias update-transfers="p && cd transfers && git stash && git co master && git fetch -p && git pull && bundle"
alias update-devtools="p && cd devtools && git stash && git co master && git fetch -p && git pull && bundle"
alias update-blackbox="p && cd blackbox-cukes && git stash && git co master && git fetch -p && git pull && bundle"
alias update-loan="p && cd loan_engine && git stash && git co master && git fetch -p && git pull && bundle"
alias update-crm="p && cd crm_service_layer && git stash && git co master && git fetch -p && git pull && bundle"
alias update-bank-pool="p && cd lovelace && git stash && git co master && git fetch -p && git pull && bundle"

alias update-env="update-alpaca && update-bilcas && update-codas && update-fe && update-fca && update-transfers && update-devtools && update-blackbox && update-loan && update-crm && update-lovelace && update-bank-pool && fca"

PATH=/usr/local/share/npm/bin:$PATH
PATH=/usr/local/bin/npm/lib:$PATH

export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export SECRET_TOKEN="8aafea60738e718d71c05141c6c3dc0193cdd313d84ed86e7c4ec0eb8fcb65dbfafa9e7b71e74cea9a3d046c38ceb182fc1b72d40487e074478bb6e4f2e33fd4"

eval "$(rbenv init -)"
export PATH=/usr/local/sbin:$PATH

export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "

export DOCKER_CERT_PATH=/Users/sjohnson/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376
export PGDATABASE='postgres'
