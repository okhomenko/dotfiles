export PATH=~/bin:/usr/local/bin:/usr/local/mysql/bin:/opt/local/bin:$PATH
export NODE_PATH=/opt/local/lib/node_modules
export PS1=""
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

alias tmux='TERM=screen-256color-bce tmux'

function parse_git_branch_and_add_brackets {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
}
export PS1="\u@\h \w\[\033[0;32m\]\$(parse_git_branch_and_add_brackets) \[\033[0m\]\$ "

