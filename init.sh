#!/bin/bash

echo "Creating symlinks"

stow -R --adopt bash
stow -R --adopt dircolors
stow -R --adopt git
stow -R --adopt nano
stow -R --adopt neofetch
stow -R --adopt shell
stow -R --adopt ssh
stow -R --adopt zsh

echo "Reset git repo"
git reset --hard

echo "Changing permissions for .shh"
chmod 644 $HOME/.ssh/config
chmod 644 $HOME/.ssh/authorized_keys
chmod 644 $HOME/.ssh/known_hosts
chmod 600 $HOME/.ssh/id_rsa
chmod 644 $HOME/.ssh/id_rsa.pub
chmod 600 $HOME/.ssh/gitlab_rsa
chmod 644 $HOME/.ssh/gitlab_rsa.pub
