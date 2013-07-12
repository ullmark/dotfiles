# Load the shared aliases.
source "../shared/aliases.sh"

# Dirs
alias o="open ."  # OS X, open in Finder

# Files
alias t='touch'

# Management
alias reload='source ~/.bash_profile && echo "sourced ~/.bash_profile"'

# Shell
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
