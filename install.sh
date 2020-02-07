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
rm -rf ~/.tmux/plugins/tpm
rm -rf ~/tmux-256color.terminfo
rm -rf ~/xterm-256color-italic.terminfo

cd ~

echo "⬇️  downloading latest version"
# for testing purposes
# cp -R ~/projects/dotfiles ~/dotfiles
git clone --depth 1 -b master --recursive https://github.com/gko/dotfiles
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

curl https://raw.githubusercontent.com/chriskempson/base16-xresources/master/xresources/base16-default-dark-256.Xresources >> ~/.Xresources

mv ~/dotfiles ~/.dotfiles

ln -s ~/.dotfiles/.bashrc ~/.bashrc
ln -s ~/.dotfiles/.bash_profile ~/.bash_profile

ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
# dev session with vim and 3 split layout
ln -s ~/.dotfiles/dev ~/.tmux/dev

ln -s ~/.dotfiles/.gitignore ~/.gitignore
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

ln -s ~/.dotfiles/tmux-256color.terminfo ~/tmux-256color.terminfo
ln -s ~/.dotfiles/xterm-256color-italic.terminfo ~/xterm-256color-italic.terminfo

echo "⚙️  installing antigen"
curl -L git.io/antigen > ~/.dotfiles/antigen.zsh
