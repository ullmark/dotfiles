source ~/.dotfiles/shared/path.sh
source ~/.dotfiles/bash/env.sh
source ~/.dotfiles/bash/prompt.sh
source ~/.dotfiles/bash/aliases.sh
source ~/.dotfiles/bash/functions.sh


# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp
for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}
