if [ $commands[nvim] ]; then
	export EDITOR=nvim
	export VISUAL=nvim
	export GIT_EDITOR=nvim
	# https://cli.github.com/manual/gh_help_environment
	export GH_EDITOR=nvim
	# Use nvim as manpager `:h Man`
	export MANPAGER='nvim +Man!'
	export MANWIDTH=999
elif [ $commands[vim] ]; then
	export EDITOR=vim
	export VISUAL=vim
	export GIT_EDITOR=vim
	export GH_EDITOR=vim
else
	export EDITOR=vi
	export VISUAL=vi
	export GIT_EDITOR=vi
	export GH_EDITOR=vi
fi
