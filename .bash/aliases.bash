case $OSTYPE in
  linux*)
    alias open="xdgWrap"
    alias clip="xclip -selection clipboard"
    ;;
  bsd*)
    alias open="xdgWrap"
    ;;
  darwin*)
    alias clip="pbcopy"
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
alias sudo="sudo -E"
alias grep="grep -IE --color=auto"
alias ls="ls --color=auto"
alias la="ls -la --color=auto"
alias video2gif="echo -e \"\n  writing to ~/out.gif\n\" && ffmpeg -vf scale=640:-1 -gifflags +transdiff ~/out.gif -i"

alias vi='vim'

source ~/.bash/aliases/git.bash

alias sniff="sudo ngrep -W byline -d 'wlp2s0' -t '^(GET|POST) ' 'tcp and port 80'"

alias reload_bash='source ~/.bash_profile'
