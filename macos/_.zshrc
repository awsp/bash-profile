set -o vi
bindkey -M viins ';j' vi-cmd-mode

# Current user's documents
alias doc="cd /Users/$USER/Documents"

# Current user's desktop
alias desktop="cd /Users/$USER/Desktop"

# Current user's downloads
alias downloads="cd /Users/$USER/Downloads"

# Current user's home
alias home="cd /Users/$USER"

# Serve current folder as a simple http server
alias serve="python -m SimpleHTTPServer 7777"

# Fast-edit of bash_profile
alias profile="vi /Users/$USER/.zshrc"

# Development
alias java.debug="java -Xmx2048m -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8000 -jar"

# Sublime Text
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"


# Git related
alias git.origin="git remote -v"
alias git.origin.set="git remote set-url origin"
alias git.local.ignore="vi ./.git/info/exclude"
alias git.ignore="git update-index --skip-worktree"
alias git.unignore="git update-index --no-skip-worktree"

function git.ignore.local() {
  local file=$1;
  echo "$1" >> ./.git/info/exclude;
  echo "\n$1 ignored.";
}

# Clear screen
alias c="clear"

# Workspace
alias ws="cd /Users/$USER/Workspace"
alias svelte.spa="npm create svelte@latest"
alias vue="npm init vue@latest"

svelte() {
  npm create vite@latest $1 -- --template svelte 
}

# Utils
alias cpu.temp="sudo powermetrics --samplers smc |grep -i \"CPU die temperature\""
alias fan.speed="sudo powermetrics --samplers smc |grep -i \"Fan:\""
alias flushdns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"
### Remove # to enable, after installing eza
#alias ls="eza --icons --header --group-directories-first"
### Remove # to enable, after installing broot
#alias lss="br --tree"
### Remove # to enable, after installing bat
#alias cat="bat"

# ULimit
ulimit -n 10240

# Functions
spot() {
    mdfind "kMDItemFSName=='*$@*'cd";
}

f() {
    find . -maxdepth 1 -iname "*$@*" 
}

fa() {
    find . -iname "*$@*"
}

ff() {
    find . -type f -maxdepth 1 -iname "*$@*"
}

fff() {
    find . -type f -maxdepth 1 -name "*$@*" 
}

fd() {
    find . -type d -maxdepth 1 -iname "*$@*"
}

fdd() {
    ifind . -type d -maxdepth 1 -name "*$@*"
}
