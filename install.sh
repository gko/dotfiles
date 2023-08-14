#!/bin/zsh

echo "You're about to install «dotfiles»‼️"
read -k 1 "answer?Proceed(y/n)❓"

if ! [[ "$answer" =~ [yY] ]]; then
	exit 0;
fi

echo -e "\n🚧 removing current dotfiles"
rm -f ~/.zshrc
rm -f ~/.bashrc
rm -f ~/.bash_profile
rm -f ~/.gitconfig
rm -f ~/.gitattributes
rm -f ~/.gitignore
rm -f ~/.bash_profile
rm -rf ~/dotfiles
rm -rf ~/.dotfiles
rm -rf ~/.antigen
rm -rf ~/.tmux.conf
rm -rf ~/.tmux/plugins

cd ~

echo "⬇️  downloading latest version"
# git pull --unshallow
# to get all revisions
git clone --depth 1 -b main --recursive https://github.com/gko/dotfiles

echo "⬇️  installing tmux plugins"
mkdir -p ~/.tmux/plugins
git clone --depth 1 https://github.com/tmux-plugins/tmux-sensible ~/.tmux/plugins/tmux-sensible
git clone --depth 1 https://github.com/tmux-plugins/tmux-resurrect ~/.tmux/plugins/tmux-resurrect
git clone --depth 1 https://github.com/tmux-plugins/tmux-continuum ~/.tmux/plugins/tmux-continuum
git clone --depth 1 https://github.com/tmux-plugins/tmux-yank ~/.tmux/plugins/tmux-yank

curl https://raw.githubusercontent.com/chriskempson/base16-xresources/master/xresources/base16-default-dark-256.Xresources >> ~/.Xresources

mv ~/dotfiles ~/.dotfiles

ln -s ~/.dotfiles/.bashrc ~/.bashrc
ln -s ~/.dotfiles/.bash_profile ~/.bash_profile

ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
# dev session with vim and 3 split layout
ln -s ~/.dotfiles/dev ~/.tmux/dev

ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.gitignore ~/.gitignore
ln -s ~/.dotfiles/.gitattributes ~/.gitattributes

echo "⚙️  installing antigen"
curl -L git.io/antigen > ~/.dotfiles/antigen.zsh

echo -e "\nDone!\n\nTo install local config files do following: \n\n\
  ln -sf ~/.dotfiles/local/.*.local ~/\n\
  cd ~/.dotfiles \n\
  git untrack local/.gitconfig.user.local\n\n\
or \n\n\
  cp ~/.dotfiles/local/.*.local ~/\
\n\nmore info here: https://github.com/gko/dotfiles/tree/main/local"
