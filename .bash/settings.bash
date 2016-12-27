source ~/.bash/settings/pre.bash

case $OSTYPE in
  linux*)
    source ~/.bash/settings/keychain.bash
    ;;
esac

# history
export HISTFILESIZE=4000
export HISTSIZE=2000
export HISTTIMEFORMAT="[%F %T] "
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# set proxy
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
