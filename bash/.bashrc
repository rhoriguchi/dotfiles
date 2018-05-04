#!/bin/bash

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Allow UTF-8 input and output
bind "set input-meta on"
bind "set output-meta on"
bind "set convert-meta off"

# Coloring for ls
[[ -f "$HOME/.dircolors" ]] && eval $(dircolors "$HOME/.dircolors") || eval $(dircolors)

# Load shell sources
for file in "$HOME/.shell/"{alias,export}; do
  if [ -f $file ]; then
      source $file
  else
      echo "Error: loding $file"
  fi
done

# Load bash sources
for file in "$HOME/.bash/"{completion,history}; do
  if [ -f $file ]; then
      source $file
  else
      echo "Error: loding $file"
  fi
done
