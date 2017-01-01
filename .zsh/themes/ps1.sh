git_super_status() {
  precmd_update_git_vars
  if [ -n "$__CURRENT_GIT_STATUS" ]; then
    STATUS="%F{default}%b($GIT_BRANCH)"

  if [ "$GIT_UNTRACKED" -ne "0" ]; then
    STATUS="$STATUS%B%F{red}*%b%F{default}"
  fi
  if [ "$GIT_CHANGED" -ne "0" ] && [ "$GIT_UNTRACKED" -eq "0" ]; then
    STATUS="$STATUS%B%F{red}*%b%F{default}"
  fi
  echo "$STATUS"
  fi
}

# only if we're on remote machine
if [[ ! $HOSTNAME =~ 'localhost' ]]; then
  _hostname="%b${default} at %m"
fi

precmd() { 
  local result=$?

  PS1="
 %B%F{red}%n$_hostname %b%F{default}in %B%F{green}%(4~|…/%2~|%~)$(git_super_status)
 %F{default}"

  if [[ $result -eq 0 ]]; then
    PS1+="%B%F{red}❤ %b%F{default}"
  else
    PS1+="%B%F{red}♡ %b%F{default}"
  fi
}
