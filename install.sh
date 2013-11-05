#!/bin/bash

cd ~
rm -rf "$HOME"/.bash*&&
rm -rf ./dotfiles&&
git clone --depth 1 --recursive https://github.com/gorodinskiy/dotfiles.git&&
mv dotfiles/.bash* "$HOME"/&&
mv dotfiles/.Xresources "$HOME"/&&
mv dotfiles/.xinitrc "$HOME"/&&
rm -rf ./dotfiles

osname=$(uname -s)
if [[ "$osname" == "Linux" ]]; then
    mkdir -p ~/.fonts
    cp ~/.bash/fonts/* ~/.fonts/

    #gnome terminal
    mkdir -p ~/.gconf/apps/gnome-terminal/profiles/Default
    cp ~/.bash/config/gnome-terminal/%gconf.xml ~/.gconf/apps/gnome-terminal/profiles/Default

    #xfce terminal
    mkdir -p ~/.config/xfce4/terminal/
    cp ~/.bash/config/xfce4/terminalrc ~/.config/xfce4/terminal/

    #sakura
    mkdir -p ~/.config/sakura/
    cp ~/.bash/config/sakura/sakura.conf ~/.config/sakura/
elif [[ "$osname" == "Darwin" ]]; then
    mkdir -p ~/Library/Fonts/
    cp ~/.bash/fonts/* ~/Library/Fonts/
fi
