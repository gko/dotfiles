case $OSTYPE in
  linux*)
    alias open="xdgWrap"
    ;;
  bsd*)
    alias open="xdgWrap"
    ;;
  darwin*)
    ;;
  cygwin|win32|win64|msys)
    alias open="cmd /c start"
    ;;
esac

function xdgWrap() {
  xdg-open "$1" &> /dev/null &
}

alias o="open"

# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias back="cd -"
alias -- -="cd -"
alias clr="clear"
alias c="clear"
# who listens on ports
alias servers="netstat -tulpn"

alias vi='vim'

source ~/.bash/aliases/git.bash

alias sniff="sudo ngrep -W byline -d 'wlp2s0' -t '^(GET|POST) ' 'tcp and port 80'"

alias reload_bash='source ~/.bash_profile'
