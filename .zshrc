setopt correct

source ~/.dotfiles/aliases.sh
source ~/.dotfiles/settings.sh

source ~/.dotfiles/antigen.zsh

antigen use oh-my-zsh

antigen bundle gko/project
antigen bundle gko/ssh-connect

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

# antigen bundle nightsense/cosmic_latte shell/cosmic_latte_light.sh
# antigen bundle nightsense/snow shell/snow_light.sh
# antigen theme denysdovhan/spaceship-prompt
antigen chriskempson/base16-shell
antigen theme gko/heart

# NVM bundle
export NVM_LAZY_LOAD=true
antigen bundle lukechilds/zsh-nvm

antigen apply

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"
