#!/bin/bash

cd 
rm -rf $HOME/.bash*&&
rm -rf ./dotfiles&&
git clone --depth 1 --recursive https://github.com/gorodinskiy/dotfiles.git&&
mv dotfiles/.b* $HOME/
rm -rf ./dotfiles