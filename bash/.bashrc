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
      echo "Error: loading $file"
  fi
done

# -------------------------------------------------------------------
# Completion
# -------------------------------------------------------------------

# Match case-insensitive on filename expansion
shopt -s nocaseglob;

# Autocorrect minor typos on `cd`-ing
shopt -s cdspell;

# cd into directory by just enter directory name (e.g. `Music` expands to `cd ./Music`)
shopt -s autocd

# Make Tab autocomplete regardless of filename case
bind "set completion-ignore-case on"

# List all matches in case multiple possible completions are possible
bind "set show-all-if-ambiguous on"

# Immediately add a trailing slash when autocompleting symlinks to directories
bind "set mark-symlinked-directories on"

# Show all autocomplete results at once
bind "set page-completions off"

# If there are more than 200 possible completions for a word, ask to show them all
bind "set completion-query-items 200"

# Show extra file information when completing, like `ls -F` does
bind "set visible-stats on"

# Be more intelligent when autocompleting by also looking at the text after the cursor
bind "set skip-completed-text on"

# -------------------------------------------------------------------
# History
# -------------------------------------------------------------------

# Keep 1000 lines of history within the shell and save it to $HOME/.bash_history
HISTSIZE=1000
SAVEHIST=$HISTSIZE
HISTFILE=$HOME/.bash_history

# Append history instead of overwriting
shopt -s histappend

# Save commands as soon as it get's executed
PROMPT_COMMAND='history -a'

# History format
export HISTTIMEFORMAT="%h %d %H:%M:%S "

# Don't save in histroy comands with
export HISTIGNORE="ls:ps:history"

# Don't add a new history entry when same code get's executed in succesion
export HISTCONTROL="ignoredups"
