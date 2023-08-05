setopt correct
setopt auto_cd

# rust plugin was trying to access the completions folder
# https://github.com/ohmyzsh/ohmyzsh/blob/7d5e12500a2ba0b575ffafcbb516568973528730/plugins/rust/rust.plugin.zsh#L22-L23
#
# https://github.com/zsh-users/antigen/issues/701#issuecomment-1129781560
#
# Since zsh env variables are not available at this point I decided to create a custom cache directory
# and redefine ZSH_CACHE_DIR variable.
# In order for this folder to be ignored by git I had to use existing gitignore
# pattern since the gitignore in this folder is a global one(~/.gitignore).
# Adding cache folder to it might break some project.
export ZSH_CACHE_DIR=~/.dotfiles/.metadata/cache
mkdir -p "${ZSH_CACHE_DIR}/completions"

# Include hidden files in autocomplete:
_comp_options+=(globdots)

source ~/.dotfiles/_functions.sh
source ~/.dotfiles/aliases.sh
source ~/.dotfiles/settings.sh

source ~/.dotfiles/antigen.zsh

antigen use oh-my-zsh

antigen bundle gko/project
antigen bundle gko/ssh-connect
antigen bundle gko/docker-alias

antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle web-search
antigen bundle z
antigen bundle ytdl-org/youtube-dl

antigen bundle git-extras
antigen bundle git-flow
antigen bundle paulirish/git-open

antigen bundle sbt
antigen bundle rust
antigen bundle npm
antigen bundle yarn

# antigen bundle nightsense/cosmic_latte shell/cosmic_latte_light.sh
# antigen bundle nightsense/snow shell/snow_light.sh
# antigen theme denysdovhan/spaceship-prompt
antigen bundle chriskempson/base16-shell
antigen theme gko/heart
antigen bundle zsh-users/zsh-syntax-highlighting

# NVM bundle
export NVM_LAZY_LOAD=false
antigen bundle lukechilds/zsh-nvm

antigen apply

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

case `uname` in
	Darwin)
		bindkey "^[^[[C" forward-word
		bindkey "^[^[[D" backward-word
		;;
	Linux)
		bindkey "^[[1;5C" forward-word
		bindkey "^[[1;5D" backward-word
		;;
esac

# let terminal/user decide (unless in tmux)
if [ "$COLORTERM" = "gnome-terminal" ]; then
	export TERM=gnome-256color
fi

if [ "$TERM" = "xterm" ]; then
	export TERM=xterm-256color
fi

if [ $commands[tmux] ]; then
	if [[ -z "$TMUX" ]] ;then
		export ITERM_ENABLE_SHELL_INTEGRATION_WITH_TMUX=YES
		ID="$( tmux ls | grep -vm1 attached | cut -d: -f1 )" # get the id of a deattached session

		if [[ -z "$ID" ]] ;then # if not available create a new one
			# https://gitlab.com/gnachman/iterm2/-/wikis/tmux-Integration-Best-Practices#how-do-i-use-shell-integration
			# https://www.iterm2.com/documentation-shell-integration.html
			# [[ -z "$ITERM_SESSION_ID" ]] && tmux new-session -s main || tmux -CC new-session -s main
			tmux new-session -s main
		else
			# [[ -z "$ITERM_SESSION_ID" ]] && tmux attach-session -t "$ID" || tmux -CC attach-session -t "$ID" # if available attach to it
			tmux attach-session -t "$ID"
		fi
	fi
fi

if [ -f ~/.zshrc.local ]; then
	source ~/.zshrc.local
fi

# in case you install fzf via brew
if [ -d /usr/local/opt/fzf ]; then
	if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
		export PATH="${PATH:+${PATH}:}/usr/local/opt/fzf"
	fi

	[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null

	source "/usr/local/opt/fzf/shell/key-bindings.zsh"
fi

if [ -f ~/.fzf.zsh ]; then
	source ~/.fzf.zsh
fi

# Wasmer
export WASMER_DIR="~/.wasmer"
if [ -s "$WASMER_DIR/wasmer.sh" ]; then
	source "$WASMER_DIR/wasmer.sh"
fi

# Coursier (for scala, macOS only)
if [ -d "${HOME}/Library/Application Support/Coursier/bin" ]; then
	export PATH="$PATH:${HOME}/Library/Application Support/Coursier/bin"
fi

# https://github.com/zsh-users/zsh-autosuggestions/issues/422#issuecomment-485890936
typeset -g ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE='1000'

if [ $commands[gh] ]; then
	eval "$(gh completion -s zsh)"
fi

export PATH=$PATH:~/bin

# this comes from here:
# https://iterm2.com/documentation-shell-integration.html
if [ -f "${HOME}/.iterm2_shell_integration.zsh" ]; then
	source "${HOME}/.iterm2_shell_integration.zsh"
fi
