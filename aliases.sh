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

# network
alias GET="curl -X GET -L"
alias POST="curl -X POST -L"
alias PUT="curl -X PUT -L"
alias DELETE="curl -X DELETE -L"
alias PATCH="curl --request PATCH -L"
alias OPTIONS="curl -i -X OPTIONS -L"
alias HEAD="curl -I -L"

alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias ccat="highlight --out-format=ansi"

# who listens on ports
alias servers="netstat -tulp" #n"
alias sniff="sudo ngrep -W byline -d 'wlp2s0' -t '^(GET|POST) ' 'tcp and port 80'"

# youtube-dl aliases
alias youtube-dl-best='youtube-dl \
	--restrict-filenames \
	--format "bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio" '
alias youtube-dl-480='youtube-dl \
	--restrict-filenames \
	--format "bestvideo[height<=480][ext=mp4]+bestaudio[ext=m4a]" '
alias youtube-dl-720='youtube-dl \
	--restrict-filenames \
	--format "bestvideo[height<=720][ext=mp4]+bestaudio[ext=m4a]" '
alias youtube-dl-4k='echo -e "This will transcode the video from webm to h264 which could take a long time\n\n"; \
	youtube-dl -f "bestvideo[ext=webm]+bestaudio[ext=m4a]" \
	--restrict-filenames \
	--recode-video mp4 '
alias youtube-dl-playlist='youtube-dl \
	--restrict-filenames \
	--output "./%(playlist_title)s/%(playlist_index)s_%(title)s.%(ext)s" '
alias youtube-dl-mp3='youtube-dl --extract-audio \
	--format bestaudio \
	--audio-format mp3 \
	--restrict-filenames \
	--no-playlist '
alias youtube-dl-mp3-playlist='youtube-dl --ignore-errors \
	--format bestaudio \
	--extract-audio \
	--audio-format mp3 \
	--audio-quality 160K \
	--restrict-filenames \
	--output "./%(playlist_title)s/%(playlist_index)s_%(title)s.%(ext)s" \
	--yes-playlist '

# generate aliases from gitconfig aliases
function generateAliasesFromGit() {
	git config --get-regexp ^alias\\. | while read gitAlias; do
		local aliasName=$(echo $gitAlias | sed -E 's/^alias\.([a-z_\-]*).*/\1/')

		# alias only if there is no collision
		if ! type "g$aliasName" >/dev/null 2>&1; then
			alias g$aliasName="git $aliasName"
		fi
	done
}

generateAliasesFromGit
