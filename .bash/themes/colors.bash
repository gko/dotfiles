if [[ $COLORTERM = gnome-* && $TERM = xterm ]]  && infocmp gnome-256color >/dev/null 2>&1; then export TERM=gnome-256color
elif [[ $TERM != dumb ]] && infocmp xterm-256color >/dev/null 2>&1; then export TERM=xterm-256color
fi

if tput setaf 1 &> /dev/null; then
    tput sgr0
    if [[ $(tput colors) -ge 256 ]] 2>/dev/null; then
      MAGENTA=$(tput setaf 9)
      ORANGE=$(tput setaf 172)
      GREEN=$(tput setaf 190)
      PURPLE=$(tput setaf 141)
      WHITE=$(tput setaf 256)
    else
      MAGENTA=$(tput setaf 5)
      ORANGE=$(tput setaf 4)
      GREEN=$(tput setaf 2)
      PURPLE=$(tput setaf 1)
      WHITE=$(tput setaf 7)
    fi
    BOLD=$(tput bold)
    RESET=$(tput sgr0)
else
    MAGENTA="\033[1;31m"
    ORANGE="\033[1;33m"
    GREEN="\033[1;32m"
    PURPLE="\033[1;35m"
    WHITE="\033[1;37m"
    BOLD=""
    RESET="\033[m"
fi

# Reset
reset='\e[0m'       # Text Reset

# Regular Colors
black='\e[0;30m'        # Black
red='\e[0;31m'          # Red
green='\e[0;32m'        # Green
yellow='\e[0;33m'       # Yellow
blue='\e[0;34m'         # Blue
purple='\e[0;35m'       # Purple
cyan='\e[0;36m'         # Cyan
white='\e[0;37m'        # White

# Bold
bold_bold_lack='\e[1;30m'       # bold_lack
bold_red='\e[1;31m'         # Red
bold_green='\e[1;32m'       # Green
bold_yellow='\e[1;33m'      # Yellow
bold_bold_lue='\e[1;34m'        # bold_lue
bold_purple='\e[1;35m'      # Purple
bold_cyan='\e[1;36m'        # Cyan
bold_white='\e[1;37m'       # White

# Underline
underlined_black='\e[4;30m'       # Black
underlined_red='\e[4;31m'         # Red
underlined_green='\e[4;32m'       # Green
underlined_yellow='\e[4;33m'      # Yellow
underlined_blunderlined_e='\e[4;34m'        # Blunderlined_e
underlined_punderlined_rple='\e[4;35m'      # Punderlined_rple
underlined_cyan='\e[4;36m'        # Cyan
underlined_white='\e[4;37m'       # White

# High Intensity
iblack='\e[0;90m'       # Black
ired='\e[0;91m'         # Red
igreen='\e[0;92m'       # Green
iyellow='\e[0;93m'      # Yellow
iblue='\e[0;94m'        # Blue
ipurple='\e[0;95m'      # Purple
icyan='\e[0;96m'        # Cyan
iwhite='\e[0;97m'       # White

# Bold High Intensity
bold_ibold_lack='\e[1;90m'      # bold_lack
bold_ired='\e[1;91m'        # Red
bold_igreen='\e[1;92m'      # Green
bold_iyellow='\e[1;93m'     # Yellow
bold_ibold_lue='\e[1;94m'       # bold_lue
bold_ipurple='\e[1;95m'     # Purple
bold_icyan='\e[1;96m'       # Cyan
bold_iwhite='\e[1;97m'      # White
