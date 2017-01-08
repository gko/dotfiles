#!/bin/bash

cd ~
rm -rf "$HOME"/.dotfiles&&
rm -rf "$HOME"/.zshrc&&
rm -rf "$HOME"/.bashrc&&
rm -rf "$HOME"/.bash_profile&&
rm -rf ./dotfiles&&
git clone --depth 1 --recursive https://github.com/gko/dotfiles.git ~/dotfiles &&
mv dotfiles/.dotfiles "$HOME"/ &&
mv dotfiles/.bash* "$HOME"/ &&
mv dotfiles/.zsh* "$HOME"/ &&
mv dotfiles/.gitc* "$HOME"/ &&
mv dotfiles/.giti* "$HOME"/ &&
rm -rf ./dotfiles
