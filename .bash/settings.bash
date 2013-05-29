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

proxy_host=""
proxy_port=""
proxy_login=""
proxy_pass=""

export EDITOR=/usr/bin/vim

#export http_proxy="http://$proxy_login:$proxy_pass@$proxy_host:$proxy_port"
#export https_proxy="http://$proxy_login:$proxy_pass@$proxy_host:$proxy_port"
#export JAVA_OPTS="$JAVA_OPTS -Dhttp.proxyHost=$proxy_host -Dhttp.proxyPort=$proxy_port -Dhttp.proxyUser=$proxy_login -Dhttp.proxyPassword=$proxy_pass"

if [ "$THEME" ];
then
  source ~/.bash/themes/"$THEME"/"$THEME".theme.bash
fi
