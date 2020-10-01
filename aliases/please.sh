# https://meyerweb.com/eric/thoughts/2020/09/29/polite-bash-commands/
# sudo
please() {
	if [ "$1" ]; then
		sudo $@
	else
		sudo "$BASH" -c "$(history -p !!)"
	fi
}
