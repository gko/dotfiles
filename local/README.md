# Local config files

Here are the files that contain configs adjusted for local user.

You can specify a persistent config in following files (in `~/` folder):
- [`.gitconfig.local`](/local/.gitconfig.local)
- [`.gitconfig.user.local`](/local/.gitconfig.user.local)
- [`.zshrc.local`](/local/.zshrc.local)
- [`.tmux.conf.local`](/local/.tmux.conf.local)

They won't be rewritten during the installation

If you want to copy all example `.local` config files from `.dotfiles` just run following:
```shell
cp ~/.dotfiles/local/.*.local ~/
```

or to link them:
```shell
ln -sf ~/.dotfiles/local/.*.local ~/
```

Please note that in order avoid pushing the changes to [`.gitconfig.user.local`](/local/.gitconfig.user.local)
it makes sense to ignore the local changes to this file:
```shell
cd ~/.dotfiles
git update-index --assume-unchanged local/.gitconfig.user.local
```

or

```
cd ~/.dotfiles
git untrack local/.gitconfig.user.local
```

if you're using the aliases
