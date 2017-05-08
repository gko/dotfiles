# init z   https://github.com/rupa/z
. ~/.dotfiles/libs/z/z.sh
. ~/.dotfiles/libs/ssh-connect/ssh-connect.sh
. ~/.dotfiles/libs/project/project.sh

export GITAWAREPROMPT=~/.dotfiles/libs/git-aware-prompt
source ${GITAWAREPROMPT}/main.sh

source ~/.dotfiles/settings.bash
source ~/.dotfiles/themes/bash/colors.bash
source ~/.dotfiles/themes/bash/ps1.bash
source ~/.dotfiles/functions.bash
source ~/.dotfiles/aliases.bash
