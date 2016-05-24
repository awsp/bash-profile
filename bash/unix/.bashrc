alias reload="source ~/.bashrc"
alias profile="vi ~/.bashrc"
alias doc="cd ~/Documents"
alias code="cd ~/Code"
alias home="cd ~"
alias open="xdg-open"
alias server="python -m SimpleHTTPServer 8080"
alias cls="clear && ls"

# Git related
alias git.origin="git remote -v"
alias git.origin.set="git remote set-url origin"


# Colorful Terminal
# https://github.com/awsp/colorful-terminal
export CLICOLOR=1

# define colors
C_DEFAULT="\[\033[m\]"
C_WHITE="\[\033[1m\]"
C_BLACK="\[\033[30m\]"
C_RED="\[\033[31m\]"
C_GREEN="\[\033[32m\]"
C_YELLOW="\[\033[33m\]"
C_BLUE="\[\033[34m\]"
C_PURPLE="\[\033[35m\]"
C_CYAN="\[\033[36m\]"
C_LIGHTGRAY="\[\033[37m\]"
C_DARKGRAY="\[\033[1;30m\]"
C_LIGHTRED="\[\033[1;31m\]"
C_LIGHTGREEN="\[\033[1;32m\]"
C_LIGHTYELLOW="\[\033[1;33m\]"
C_LIGHTBLUE="\[\033[1;34m\]"
C_LIGHTPURPLE="\[\033[1;35m\]"
C_LIGHTCYAN="\[\033[1;36m\]"
C_BG_BLACK="\[\033[40m\]"
C_BG_RED="\[\033[41m\]"
C_BG_GREEN="\[\033[42m\]"
C_BG_YELLOW="\[\033[43m\]"
C_BG_BLUE="\[\033[44m\]"
C_BG_PURPLE="\[\033[45m\]"
C_BG_CYAN="\[\033[46m\]"
C_BG_LIGHTGRAY="\[\033[47m\]"


# Always display git branch in prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# set your prompt
export PS1="$C_LIGHTGREEN\u@$C_DARKGRAY@$C_BLUE\h $C_PURPLE[\w]$C_LIGHTGREEN\n\$(parse_git_branch) $C_DARKGRAY\$$C_DEFAULT "

# Utilities
# Change Terminal Window's Name
tname() {
  if [[ -z "$ORIG" ]]; then
    ORIG=$PS1
  fi
  TITLE="\[\e]2;$@\a\]"
  PS1=${ORIG}${TITLE}
}

alias ls='ls -lhFa --color'
LS_COLORS='di=4;96:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
export LS_COLORS


## Vim multi-cursor
stty ixany
stty ixoff -ixon
