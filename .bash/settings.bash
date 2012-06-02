#bug see https://bugs.launchpad.net/ubuntu/+source/gnome-keyring/+bug/201786
unset SSH_AUTH_SOCK
unset use_color safe_term match_lhs

### START-Keychain ###
# Let  re-use ssh-agent and/or gpg-agent between logins
/usr/bin/keychain $HOME/.ssh/id_rsa
source $HOME/.keychain/$HOSTNAME-sh
### End-Keychain ###

source $BASH_FOLDER/themes/base.bash

if [ "$THEME" ];
then
  source $BASH_FOLDER/themes/$THEME/$THEME.theme.bash
fi

