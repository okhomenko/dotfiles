export LANG="en_US.UTF-8"
export PS1=""
#export CLICOLOR=1
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
#export TERM="xterm-256color"

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

PATH=$HOME/bin:$PATH
#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH="/usr/local/sbin:$PATH"
export PATH=$PATH:/usr/local/opt/go/libexec/bin

#export DOCKER_TLS_VERIFY="1"
#export DOCKER_HOST="tcp://192.168.99.100:2376"
#export DOCKER_HOST="tcp://127.0.0.1:2376"
#export DOCKER_CERT_PATH="/Users/okhomenko/.docker/machine/machines/docker-vm"
#export DOCKER_MACHINE_NAME="docker-vm"

#export NVM_DIR=~/.nvm
#source $(brew --prefix nvm)/nvm.sh

export GOPATH=$HOME/gowork
export PATH=$PATH:$GOPATH/bin:$HOME/bin
