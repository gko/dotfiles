case $OSTYPE in
  linux*)
    #bug see https://bugs.launchpad.net/ubuntu/+source/gnome-keyring/+bug/201786
    unset SSH_AUTH_SOCK
    unset use_color safe_term match_lhs

    ### START-Keychain ###
    # Let  re-use ssh-agent and/or gpg-agent between logins
    /usr/bin/keychain $HOME/.ssh/id_rsa
    source $HOME/.keychain/$HOSTNAME-sh
    ### End-Keychain ###
    ;;
esac

source ~/.bash/themes/base.bash

export http_proxy=""
export https_proxy=""

if [ "$THEME" ];
then
  source ~/.bash/themes/"$THEME"/"$THEME".theme.bash
fi
