source ~/.dotfiles/settings/go.sh
source ~/.dotfiles/settings/java.sh
source ~/.dotfiles/settings/editor.sh

case $OSTYPE in
	linux*)
		source ~/.dotfiles/settings/keychain.sh
		;;
esac

# history
export SAVEHIST=10000
export HISTFILE=~/.history
if [ -n "$ZSH_VERSION" ]; then
	setopt APPEND_HISTORY
	setopt INC_APPEND_HISTORY
fi
export HISTFILESIZE=10000
export HISTSIZE=6000
# export HISTTIMEFORMAT="[%F %T] "
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

export TERM=xterm
export LANG=en_US.UTF-8

# to avoid downloading chromium on every npm install
export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
