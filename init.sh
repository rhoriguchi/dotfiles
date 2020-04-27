#!/usr/bin/env bash

echo "Creating symlinks"

stow -R --adopt bash
stow -R --adopt dircolors
stow -R --adopt git
stow -R --adopt nano
stow -R --adopt neofetch
stow -R --adopt qbittorrent
stow -R --adopt shell
stow -R --adopt ssh
stow -R --adopt zsh

echo "Reset git repo"
git reset --hard

echo "Changing permissions for .shh"
chmod 644 ~/.ssh/config
chmod 644 ~/.ssh/authorized_keys
