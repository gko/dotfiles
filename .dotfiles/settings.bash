source ~/.dotfiles/settings/pre.bash

case $OSTYPE in
  linux*)
    source ~/.dotfiles/settings/keychain.bash
    ;;
esac

# history
export SAVEHIST=4000
export HISTFILE=~/.history
if [ -n "$ZSH_VERSION" ]; then
  setopt APPEND_HISTORY
  setopt INC_APPEND_HISTORY
fi
export HISTFILESIZE=4000
export HISTSIZE=2000
#export HISTTIMEFORMAT="[%F %T] "
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# set proxy
proxy_host=""
proxy_port=""
proxy_login=""
proxy_pass=""

source ~/.dotfiles/settings/set_proxy.bash

export EDITOR=/usr/bin/vim
export TERM=xterm
export LANG=en_US.UTF-8
