# RVM (ruby version manager)
# note: if you get an error "__rvm_cleanse_variables" in zsh see:
# http://stackoverflow.com/questions/10585002/zsh-complains-about-rvm-rvm-cleanse-variables-function-definition-file-not-fo
[ -s "$HOME/.rvm/scripts/rvm" ] && . $HOME/.rvm/scripts/rvm

# NVM (node version manager)
[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM

# DNVM (dotnet version manager)
[ -s $HOME/.dnx/dnvm/dnvm.sh ] && . $HOME/.dnx/dnvm/dnvm.sh # Load dnvm

# Homebrew
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:~/.bin
export PATH=$PATH:/usr/local/sbin
