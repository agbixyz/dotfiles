echo "Hello from .zshrc"

# Set Variables


# Change ZSH Options


# Create Aliases
alias ls='ls -lAFh'
alias sz='source ~/.zshrc'


# Customize Prompt(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'


# Add Locations to $PATH Variable


# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}




# User ZSH Plugins


eval "$(/opt/homebrew/bin/brew shellenv)"
