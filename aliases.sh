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
		# TODO wl-clipboard https://superuser.com/a/1377550
		alias clip="xclip -selection clipboard"
		alias copy="xclip -selection clipboard"
		;;
	bsd*)
		alias open="xdgWrap"
		alias clip="xclip -selection clipboard"
		alias copy="xclip -selection clipboard"
		;;
	darwin*)
		alias ls="ls -h -G"
		alias clip="pbcopy"
		alias copy="pbcopy"
		alias hide="chflags hidden"
		alias unhide="chflags nohidden"
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
alias :q='exit'
alias :qa='exit'
alias :Q='exit'
alias :QA='exit'

alias g='git'
alias gcl='git cl'
alias gc='git commit'
alias ga='git add'
alias gA='git add -A'
alias gaa='git add -A'
alias gp='git push'
alias gpu='git pull'
alias gco='git checkout'
alias gs='git status'
alias gd='git diff'
alias gds='git diff --staged'
alias gl='git log'
alias gsave='git save'
alias gstash='git stash'

alias d='docker'
# list all docker ports exposed by containers
alias docker-ports='docker container ls --format "table {{.ID}}\t{{.Names}}\t{{.Ports}}" -a'
alias prj='project'
alias p='project'
alias notes="mkdir -p ~/Documents/Notes/ && $EDITOR ~/Documents/Notes/index.md"
alias note="notes"
alias todo="mkdir -p ~/Documents/Notes/ && $EDITOR ~/Documents/Notes/todo.md"
alias TODO="todo"

# getting around
alias ..="cd .."
alias ...="cd ../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias back="cd -"
alias -- -="cd -"

alias grep="grep --color=auto"
alias compare="diff --exclude=.git --color=auto -rq"
alias diff="diff --color=auto"
alias ccat="highlight --out-format=ansi"
alias download_website='wget -H -E -k -p '
