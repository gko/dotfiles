#!/bin/zsh

echo "You're about to install «dotfiles»‼️"
read -k 1 "answer?Proceed(y/n)❓"

if ! [[ "$answer" =~ [yY] ]]; then
	exit 0;
fi

echo "🚧 removing current dotfiles"
rm -f ~/.zshrc
rm -f ~/.bashrc
rm -f ~/.bash_profile
rm -f ~/.gitconfig
rm -f ~/.gitignore
rm -f ~/.bash_profile
rm -rf ~/dotfiles
rm -rf ~/.dotfiles
rm -rf ~/.antigen
rm -rf ~/.tmux.conf

cd ~

echo "⬇️  downloading latest version"
# for testing purposes
# cp -R ~/projects/dotfiles ~/dotfiles
git clone --depth 1 -b master --recursive https://github.com/gko/dotfiles
mv ~/dotfiles ~/.dotfiles

ln -s ~/.dotfiles/.bashrc ~/.bashrc
ln -s ~/.dotfiles/.bash_profile ~/.bash_profile

ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.tmux.conf ~/.zshrc

ln -s ~/.dotfiles/.gitignore ~/.gitignore
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

echo "⚙️  installing antigen"
curl -L git.io/antigen > ~/.dotfiles/antigen.zsh
