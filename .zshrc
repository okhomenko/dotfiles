# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

zstyle ':completion:*' special-dirs true

# Load colors
autoload -U colors && colors
# Need this, so the prompt will work
setopt prompt_subst

ZSH=~/.zsh
EXTRAS=$ZSH/extras
source $ZSH/git.zsh
source $EXTRAS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Tab completion
zstyle ':completion:*:*:*:*' menu select=1
zstyle ':completion:*:*:*:*' verbose yes

# Custom prompt
# From: https://github.com/sjl/oh-my-zsh/blob/master/themes/prose.zsh-theme
function virtualenv_info {
  [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function box_name {
  [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

function heart {
  echo '♥' && return
}

function cloud {
  echo '☁' && return
}

function lambda {
  echo 'λ' && return
}

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

preexec () { print -rn -- $terminfo[el]; }
PROMPT='%{$fg[magenta]%}%n%{$reset_color%} in %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info) %{$fg[red]%}
$(heart)%{$reset_color%} '

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:/usr/local/share/npm/bin # Add RVM to PATH for scripting
PATH=$PATH:/usr/local/share/python

# alias tmux="tmux -2"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export TERM="xterm-256color"
