source ~/.dotfiles/aliases/network.sh
source ~/.dotfiles/aliases/youtube-dl.sh
source ~/.dotfiles/aliases/please.sh
source ~/.dotfiles/aliases/git.sh

# https://github.com/LukeSmithxyz/voidrice/blob/efa9fffae21abdcf207678655a446770082afd9a/.config/aliasrc#L17
alias ls="ls -hN --color=auto --group-directories-first"
alias la="ls -la"
alias ll="ls -lah"

case $OSTYPE in
	linux*)
		alias open="xdgWrap"
		alias clip="xclip -selection clipboard"
		;;
	bsd*)
		alias open="xdgWrap"
		;;
	darwin*)
		alias ls="ls -h -G"
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

# overall
alias video2gif="echo -e \"\n  writing to ~/out.gif\n\" && ffmpeg -vf scale=640:-1 -gifflags +transdiff ~/out.gif -i"
alias clr="clear"
alias c="clear"
alias vi='vim'
alias v='vim'
alias nv='nvim'
alias n='nvim'
alias e="$EDITOR"
alias x='exit'
alias g='git'
alias d='docker'
alias prj='project'
alias p='project'

# getting around
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias back="cd -"
alias -- -="cd -"

alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias ccat="highlight --out-format=ansi"
