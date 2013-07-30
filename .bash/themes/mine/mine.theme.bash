# port of zork theme
SCM_THEME_PROMPT_PREFIX=""
SCM_THEME_PROMPT_SUFFIX=""

SCM_THEME_PROMPT_DIRTY="${BOLD}${RED}•${RESET}"
SCM_THEME_PROMPT_CLEAN="${BOLD}${GREEN}°${RESET}"
#SCM_GIT_CHAR="${STRING_COLOR}±${normal}"
#SCM_SVN_CHAR="${bold_cyan}⑆${normal}"
#SCM_HG_CHAR="${BOLD}${RED}☿${normal}"

#Mysql Prompt
#export MYSQL_PS1="(\u@\h) [\d]> "

#case $TERM in
        #xterm*)
        #TITLEBAR="\[\033]0;\w\007\]"
        #;;
        #*)
        #TITLEBAR=""
        #;;
#esac

#PS3=">> "

#__my_rvm_ruby_version() {
    #local gemset=$(echo $GEM_HOME | awk -F'@' '{print $2}')
  #[ "$gemset" != "" ] && gemset="@$gemset"
    #local version=$(echo $MY_RUBY_HOME | awk -F'-' '{print $2}')
    #local full="$version$gemset"
  #[ "$full" != "" ] && echo "${BRACKET_COLOR}[${STRING_COLOR}$full${BRACKET_COLOR}]${normal}"
#}

#is_vim_shell() {
        #if [ ! -z "$VIMRUNTIME" ]
        #then
                #echo "${BRACKET_COLOR}[${STRING_COLOR}vim shell${BRACKET_COLOR}]${normal}"
        #fi
#}

#function is_integer() { # helper function for todo-txt-count
    #[ "$1" -eq "$1" ] > /dev/null 2>&1
        #return $?
#}

#todo_txt_count() {
    #if `hash todo.sh 2>&-`; then # is todo.sh installed
        #count=`todo.sh ls | egrep "TODO: [0-9]+ of ([0-9]+) tasks shown" | awk '{ print $4 }'`
        #if is_integer $count; then # did we get a sane answer back
            #echo "${BRACKET_COLOR}[${STRING_COLOR}T:$count${BRACKET_COLOR}]$normal"
        #fi
    #fi
#}

modern_scm_prompt() {
    CHAR=$(scm_char)
    if [ $CHAR = $SCM_NONE_CHAR ]
    then
        return
    else
        echo -e "$RESET on ${BOLD}${PURPLE}$(scm_prompt_info)"
    fi
}

#my_prompt_char() {
    #if [[ $OSTYPE =~ "darwin" ]]; then
        #echo "${BRACKET_COLOR}➞  ${normal}"
    #else
        #echo "${BRACKET_COLOR}➞ ${normal}"
    #fi
#}

PS1="\n\[${BOLD}${RED}\]\u \[$RESET\]at \[${BOLD}${ORANGE}\]\h \[$RESET\]in \[${BOLD}${GREEN}\]\W\$(modern_scm_prompt)\[$RESET\]\n\$ \[$RESET\]"
