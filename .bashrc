export LANG="en_US.UTF-8"
export PS1=""
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export TERM="xterm-256color"

if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

PATH=$PATH:$HOME/bin
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH="/usr/local/sbin:$PATH"
export PATH=$PATH:/usr/local/opt/go/libexec/bin

export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://127.0.0.1:2376
export DOCKER_CERT_PATH=$HOME/.boot2docker/certs/boot2docker-vm
