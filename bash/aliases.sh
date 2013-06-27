# Dirs
alias o="open ."  # OS X, open in Finder

# Files
alias t='touch'

# Management
alias dots="mvim ~/.dotfiles"
alias reload='source ~/.bash_profile && echo "sourced ~/.bash_profile"'
alias redot='cd ~/.dotfiles && gpp && rake install; cd -'

# Shell
alias c='clear'
alias la='ls -alh'
alias cdd='cd -'  # back to last directory
alias pag='ps aux | grep '
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# Portable ls with colors
if ls --color -d . >/dev/null 2>&1; then
  alias ls='ls --color=auto'  # Linux
elif ls -G -d . >/dev/null 2>&1; then
  alias ls='ls -G'  # BSD/OS X
fi
alias ll='ls -l'

# Git
alias gl="git log"
alias gs="git status"
alias ga="git add"
alias gw="git show"
alias gd="git diff"  # What's changed but not yet added?
alias gdc="git diff --cached"  # What's added but not yet committed?
alias gc="git commit -a -m"
alias gco="git commit -m"  # "only"
alias gp='git push'
alias gpp='git pull --rebase && git push'
alias gppp='git pull && git push'
alias go="git checkout"
alias gb="git checkout -b"
alias got="git checkout -"
alias gom="git checkout master"
alias gr="git branch -d"
alias grr="git branch -D"
alias gcp="git cherry-pick"
alias gam="git commit --amend"
alias gg="git log --grep"

# Mercurial
alias hs="hg status"

alias hosts='sudo mvim /etc/hosts'

# Redis
alias redis="redis-server /usr/local/etc/redis.conf"

#mongo
alias mongod="mongod run --config /usr/local/etc/mongod.conf"

# HTTP
alias http="python -m SimpleHTTPServer 8080"
