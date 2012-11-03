case $OSTYPE in
  linux*)
    alias open="xdg-open"
    alias o="xdg-open"
    ;;
esac

# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"
alias clr="clear"

source $BASH_FOLDER/aliases/osx.bash
source $BASH_FOLDER/aliases/vim.bash
source $BASH_FOLDER/aliases/git.bash

sniff="sudo ngrep -W byline -d 'en0' -t '^(GET|POST) ' 'tcp and port 80'"

alias reload_bash='source ~/.bash_profile'
