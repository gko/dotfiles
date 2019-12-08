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

# overall
alias video2gif="echo -e \"\n  writing to ~/out.gif\n\" && ffmpeg -vf scale=640:-1 -gifflags +transdiff ~/out.gif -i"
alias clr="clear"
alias grep="grep -IE --color=auto"
alias c="clear"
alias la="ls -la"
alias ll="ls -lah"
alias vi='vim'
alias v='vim'
alias nv='nvim'
alias n='nvim'
alias g='git'
alias prj='project'

# getting around
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias back="cd -"
alias -- -="cd -"

# network
alias GET="curl -X GET -L"
alias POST="curl -X POST -L"
alias PUT="curl -X PUT -L"
alias DELETE="curl -X DELETE -L"
alias PATCH="curl --request PATCH -L"
alias OPTIONS="curl -i -X OPTIONS -L"
alias HEAD="curl -I -L"

# https://github.com/LukeSmithxyz/voidrice/blob/efa9fffae21abdcf207678655a446770082afd9a/.config/aliasrc#L17
ls="ls -hN --color=auto --group-directories-first"
grep="grep --color=auto"
diff="diff --color=auto"
ccat="highlight --out-format=ansi"

# who listens on ports
alias servers="netstat -tulpn"
alias sniff="sudo ngrep -W byline -d 'wlp2s0' -t '^(GET|POST) ' 'tcp and port 80'"
