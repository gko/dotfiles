#################################################################
# © Copyright 2012 Konstantin Gorodinskiy. All Rights Reserved. #
# Do What The Fuck You Want To Public License, Version 2.       #
# See http://sam.zoy.org/wtfpl/COPYING for more details.        #
#################################################################
export BASH_FOLDER=$HOME/.bash
export THEME="mine"

source $BASH_FOLDER/themes/colors.bash
source $BASH_FOLDER/aliases.bash
source $BASH_FOLDER/functions.bash
source $BASH_FOLDER/settings.bash
source $BASH_FOLDER/completion.bash

#to be able to use Ctrl key in vim
stty stop ''

# init z   https://github.com/rupa/z
. ~/.bash/z/z.sh
