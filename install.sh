#!/bin/bash

cd ~
rm -rf "$HOME"/.bash*&&
rm -rf ./dotfiles&&
git clone --depth 1 --recursive https://github.com/gko/dotfiles.git ~/dotfiles &&
mv dotfiles/.bash* "$HOME"/ &&
mv dotfiles/.gitc* "$HOME"/ &&
mv dotfiles/.giti* "$HOME"/ &&
rm -rf ./dotfiles
