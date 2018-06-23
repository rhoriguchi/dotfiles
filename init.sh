#!/bin/bash

cd ~/.dotfiles

echo "Creating symlinks"
stow -R --adopt bash
stow -R --adopt dircolors
stow -R --adopt shell
stow -R --adopt ssh
stow -R --adopt zsh
stow -R --adopt git

echo "Reset git repo"
git reset --hard

echo "Changing permissions for .shh"
chmod 600 -R $HOME/.ssh/config
chmod 600 -R $HOME/.ssh/authorized_keys
