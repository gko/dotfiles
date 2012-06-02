    cd&&
    rm -rf $HOME/.bash*&&
    rm -rf ./dotfiles&&
    git clone git@github.com:gorodinskiy/dotfiles.git&&
    mv ./dotfiles/.b* $HOME/&&
    rm -rf ./dotfiles 
