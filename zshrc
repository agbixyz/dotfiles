echo "Hello from .zshrc"

# Set Variables
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat
export N_PREFIX="$HOME/.n"
export PREFIX="$N_PREFIX"

## Change ZSH Options

# Adjust History Variables & Options
[[ -z $HISTFILE ]] && HISTFILE="$HOME/.zsh_history"
HISTSIZE=5000 # Session Memory Limit
SAVEHIST=4000 # File Memory Limit
setopt histNoStore
setopt extendedHistory

# History Duplication Options
# setopt histFindNoDups
# setopt histSaveNoDups
# setopt histExpireDupsFirst
# setopt histIgnoreDups
setopt histIgnoreAllDups

# History Appending Options
# Explicitly turning off appendHistory (though
# incAppendHistory probably supersedes it anyway)
unsetopt appendHistory
setopt incAppendHistory


## Create Aliases
alias ls='exa -laFh --git'
alias sz='source ~/.zshrc'
alias exa='exa -laFh --git'
alias man=batman
alias bbd='brew bundle dump --force --describe'
alias trail='<<<${(F)path}'
alias rm=trash


## Customize Prompt(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'


## Add Locations to $path Array
typeset -U path

path=(
  "$N_PREFIX/bin"
  "/opt/homebrew/bin"
  "/opt/homebrew/sbin"
  $path
  "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
)


## Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}


## User ZSH Plugins

