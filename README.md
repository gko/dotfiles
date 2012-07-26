#Bash settings
```
cd&&
rm -rf $HOME/.bash*&&
rm -rf ./dotfiles&&
git clone git@github.com:gorodinskiy/dotfiles.git&&
cd dotfiles&&
git submodule init&&
git submodule update&&
cd ../&&
mv ./dotfiles/.b* $HOME/&&
rm -rf ./dotfiles
```
