  export EDITOR='subl -w'

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

[ -f ~/.bashrc ] && source ~/.bashrc

PS1='[ \[\e[0;96m\]\t\]-\e[1;95m\]\h \e[0;92m\]\]\w\e[0;93m\]$(parse_git_branch)\e[00m\] ]\n$ '

alias nginx='sudo env rvm_trust_rvmrcs_flag=1 /usr/local/bin/nginx'
alias stopnginx='sudo /usr/local/bin/nginx -s stop'

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

alias project-update="git stash && git co master && git fetch -p && git pull && gem install bundler && bundle"

alias update-transfers="p && cd transfers && project-update"
alias update-bilcas="p && cd bilcas && project-update"
alias update-codas="p && cd codas && project-update"
alias update-fca="fca && git stash && git co production && git fetch -p && git pull && bundle"
alias update-fe="fe && project-update"
alias update-alpaca="p && cd alpaca && project-update"
alias update-autobid="p && cd autobid && project-update"
alias update-auto_invest="p && cd auto_invest && project-update"
alias update-bank-pool="p && cd bank-pool && project-update"
alias update-bilcas_stub="p && cd bilcas_stub && project-update"
alias update-crm="p && cd crm_service_layer && project-update"
alias update-dispatcher="p && cd dispatcher && project-update"
alias update-loan="p && cd loan_engine && project-update"
alias update-lovelace="p && cd lovelace && project-update"
alias update-uk-gateway="p && cd uk-gateway && project-update"


alias update-devtools="p && cd devtools && project-update"
alias update-blackbox="p && cd blackbox-cukes && project-update"
alias update-cashbook="p && cd cashbook && project-update"

alias update-env="update-transfers && update-bilcas && update-codas && update-fca && update-fe && update-alpaca && update-autobid && update-auto_invest && update-bank-pool && update-bilcas_stub && update-crm && update-dispatcher && update-loan && update-lovelace && update-uk-gateway && update-devtools && update-blackbox && update-cashbook && fca"

PATH=/usr/local/share/npm/bin:$PATH
PATH=/usr/local/bin/npm/lib:$PATH

EXTRA_CLASSPATH="/Users/sjohnson/projects/riemann-0.2.10/monitoring-config/riemann/lib/riemann-extra-0.2.4-standalone.jar"
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
export CLOUDAMQP_PASSWORD="blahblah"
export PROJECTS_DIR=~/projects
export FRONTEND_ROOT=$PROJECTS_DIR/fca-frontend
export FCA_ROOT=$PROJECTS_DIR/funding_circle_app

source /Users/sjohnson/projects/devtools/.source
ssh-add /Users/sjohnson/.vagrant.d/insecure_private_key &>/dev/null

eval $(docker-machine env dev)
