# init z   https://github.com/rupa/z
. ~/.dotfiles/libs/z/z.sh
. ~/.dotfiles/libs/project/project.sh
. ~/.dotfiles/libs/zsh-git-prompt/zshrc.sh
. ~/.dotfiles/libs/ssh-connect/ssh-connect.sh

HOSTNAME=$(hostname)

source ~/.dotfiles/aliases.bash
source ~/.dotfiles/functions.bash
source ~/.dotfiles/settings.bash

source ~/.dotfiles/themes/zsh/ps1.sh
