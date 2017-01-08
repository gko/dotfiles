# only if we're on remote machine
if [[ ! $HOSTNAME =~ 'localhost' ]]; then
  _hostname="$RESET at \h"
fi

set_prompt() { 
  local result=$?

  PS1="\[$RESET\]\n \[$BOLD\]\[$RED\]\u\[$_hostname\]\[$RESET\] in \[$BOLD\]\[$GREEN\]\W\[$RESET\]\$git_branch\[$BOLD\]\[$RED\]\$git_dirty\[$RESET\]\n "

  if [[ $result -eq 0 ]]; then
    PS1+="\[$BOLD\]\[$RED\]❤ \[$RESET\]"
  else
    PS1+="\[$BOLD\]\[$RED\]♡ \[$RESET\]"
  fi
}

export PROMPT_COMMAND="set_prompt; $PROMPT_COMMAND"
