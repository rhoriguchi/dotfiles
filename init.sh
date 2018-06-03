#!/bin/bash

cd ~/dotfiles

echo "Creating symlinks"
stow -R bash
stow -R dircolors
stow -R shell
stow -R ssh
stow -R zsh
stow -R git

if [ ! -d $HOME/powerlevel9k ]; then
    echo "Cloning https://github.com/bhilburn/powerlevel9k.git to $HOME/powerlevel9k"
    git clone https://github.com/bhilburn/powerlevel9k.git $HOME/powerlevel9k
fi

echo "Changing permissions for .shh"
chmod 600 -R $HOME/.ssh/config
chmod 600 -R $HOME/.ssh/authorized_keys
