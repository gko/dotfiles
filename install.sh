#!/bin/bash

cd 
rm -rf $HOME/.bash*&&
rm -rf ./dotfiles&&
git clone --depth 1 --recursive https://github.com/gorodinskiy/dotfiles.git&&
mv dotfiles/.bash_profile $HOME/
mv dotfiles/.bashrc $HOME/
rm -rf ./dotfiles
