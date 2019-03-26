source ~/.dotfiles/aliases.sh
source ~/.dotfiles/settings.sh

source ~/.dotfiles/antigen.zsh

antigen use oh-my-zsh

#antigen bundle chriskempson/base16-shell
antigen bundle gko/project
antigen bundle gko/ssh-connect
#antigen theme "gko/heart-theme"

antigen bundle zsh-users/zsh-history-substring-search
antigen bundle osx
antigen bundle web-search
antigen bundle z

antigen bundle git
antigen bundle git-extras
antigen bundle git-flow
antigen bundle github/hub etc/hub
antigen bundle github

antigen bundle sbt
antigen bundle cargo
antigen bundle npm

antigen theme denysdovhan/spaceship-prompt

# NVM bundle
export NVM_LAZY_LOAD=true
antigen bundle lukechilds/zsh-nvm

antigen apply
