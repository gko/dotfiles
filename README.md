# Dotfiles

My dotfiles config.
![screenshot](/screenshot.png)

## Installation

Run following command:
```shell
curl -L https://raw.github.com/gko/dotfiles/main/install.sh | zsh
```

### Configure italic font

in your `.zshrc.local` add following lines:
```shell
tic -x ~/.dotfiles/xterm-256color-italic.terminfo
tic -x ~/.dotfiles/tmux-256color.terminfo
```

#### Iterm

In `iterm` check the « Italic text » checkbox in `Settings` → `Profiles` → `Text`.

Then in « Report terminal type » (`Settings` → `Profiles` → `Terminal`) set `xterm-256color-italic`.

## User configuration

Please see [/local/README.md](/local/README.md) for local configuration files.

## Some issues

### Arrow on the left side of iterm

See fix: https://github.com/romkatv/powerlevel10k/issues/970#issuecomment-678410522

### Option key as meta key

https://github.com/gko/vimio#macos

## License

[MIT](http://opensource.org/licenses/MIT)

Copyright (c) 2012-2023 Konstantin Gorodinskiy
