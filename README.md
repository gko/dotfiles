# Dotfiles

My dotfiles config.
![screenshot](https://github.com/gko/dotfiles/raw/master/screenshot.png)

## Installation

Run following command:
```shell
curl -L https://raw.github.com/gko/dotfiles/master/install.sh | zsh
```

### Configure italic font

in your `.zshrc.local` add following lines:
```shell
tic -x xterm-256color-italic.terminfo
tic -x tmux-256color.terminfo
```

#### Iterm

In `iterm` then check the « Italic text » checkbox in `Settings` → `Profiles` → `Text`.
Then in « Report terminal type » (`Settings` → `Profiles` → `Terminal`) set `xterm-256color-italic`.

## User config

You can specify a persistent config in following files (in `~/` folder):
- [`.gitconfig.local`](/.gitconfig.local)
- [`.zshrc.local`](/.zshrc.local)
- [`.tmux.conf.local`](/.tmux.conf.local)

They won't be rewritten during the installation

If you want to copy all example `.local` config files from `.dotfiles` just run following:
```shell
cp ~/.dotfiles/.*.local ~/
```

or to link them:
```shell
ln -sf ~/.dotfiles/.*.local ~/
```

## License

[MIT](http://opensource.org/licenses/MIT)

Copyright (c) 2012-2019 Konstantin Gorodinskiy
