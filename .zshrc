setopt correct
setopt auto_cd

source ~/.dotfiles/aliases.sh
source ~/.dotfiles/settings.sh

source ~/.dotfiles/antigen.zsh

antigen use oh-my-zsh

antigen bundle gko/project
antigen bundle gko/ssh-connect

antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle osx
antigen bundle web-search
antigen bundle z
antigen bundle dotenv

antigen bundle git
antigen bundle git-extras
antigen bundle git-flow
antigen bundle github/hub etc/hub
antigen bundle github

antigen bundle sbt
antigen bundle cargo
antigen bundle npm

# antigen bundle nightsense/cosmic_latte shell/cosmic_latte_light.sh
# antigen bundle nightsense/snow shell/snow_light.sh
# antigen theme denysdovhan/spaceship-prompt
antigen bundle chriskempson/base16-shell
antigen theme gko/heart
antigen bundle zsh-users/zsh-syntax-highlighting

# NVM bundle
export NVM_LAZY_LOAD=true
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

# for VIM and TMUX
if [ "$TERM" = "xterm" ]; then
	export TERM=xterm-256color
fi

# TMUX
# if which tmux >/dev/null 2>&1; then
# # if no session is started, start a new session
# test -z ${TMUX} && tmux

# # when quitting tmux, try to attach
# while test -z ${TMUX}; do
# tmux attach || break
# done
# fi

if which tmux >/dev/null 2>&1; then
	if [[ -z "$TMUX" ]] ;then
		ID="$( tmux ls | grep -vm1 attached | cut -d: -f1 )" # get the id of a deattached session
		if [[ -z "$ID" ]] ;then # if not available create a new one
			tmux new-session
		else
			tmux attach-session -t "$ID" # if available attach to it
		fi
	fi
fi

if [ -f ~/.zshrc.local ]; then
	source ~/.zshrc.local
fi
