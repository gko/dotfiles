case $OSTYPE in
  linux*)
    if [ -f /usr/bin/keychain ]; then
      #bug see https://bugs.launchpad.net/ubuntu/+source/gnome-keyring/+bug/201786
      unset SSH_AUTH_SOCK
      unset use_color safe_term match_lhs

      ### START-Keychain ###
      # Let  re-use ssh-agent and/or gpg-agent between logins
      /usr/bin/keychain $HOME/.ssh/id_rsa
      source $HOME/.keychain/$HOSTNAME-sh
      ### End-Keychain ###
    fi
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
