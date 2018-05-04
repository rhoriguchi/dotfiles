DEFAULT_USER="xxlpitu"

# Disable mail checking
MAILCHECK=0

# Needed to use #, ~ and ^ in regexing filenames
setopt extended_glob

# Report status of background jobs immediately
setopt notify

# Disable beeping
setopt nobeep

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Load shell sources
for file in "$HOME/.shell/"{alias,export}; do
  if [ -f $file ]; then
      source $file
  else
      echo "Error: loding $file"
  fi
done

# Load zsh sources
for file in "$HOME/.zsh/"{completion,dir_stack,history,theme}; do
  if [ -f $file ]; then
      source $file
  else
      echo "Error: loding $file"
  fi
done
