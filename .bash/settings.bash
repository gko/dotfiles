case $OSTYPE in
  linux*)
    source ~/.bash/settings/keychain.bash
    ;;
esac

#set proxy
proxy_host=""
proxy_port=""
proxy_login=""
proxy_pass=""

source ~/.bash/settings/set_proxy.bash

export EDITOR=/usr/bin/vim
export TERM=xterm
export LANG=en_US.UTF-8

source ~/.bash/themes/ps1.bash
export PROMPT_COMMAND="set_prompt; $PROMPT_COMMAND"
