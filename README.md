# dotfiles setup

## Clone your dotfiles
`git clone --bare git@github.com:username/dotfiles.git $HOME/.dotfiles`

## Create alias
`alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'`

## Install Fedora Essential Packages
`sudo dnf install -y $(cat ~/.config/fedora-packages.txt)`

# Backup existing configs
```
mkdir -p ~/.config-backup
dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} ~/.config-backup/{}
```

## Checkout your dotfiles
`dotfiles checkout`

## Hide untracked files
`dotfiles config --local status.showUntrackedFiles no`

## Copy template files and add your secrets
`cp ~/.config/fish/secrets.fish.template ~/.config/fish/secrets.fish`
