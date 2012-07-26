# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"
alias clr="clear"

source $BASH_FOLDER/aliases/osx.bash
source $BASH_FOLDER/aliases/vim.bash
source $BASH_FOLDER/aliases/git.bash

alias reload_bash='source ~/.bash_profile'
