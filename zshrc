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
setopt histIgnoreAllDups
unsetopt appendHistory # explicit and unnecessary
setopt incAppendHistoryTime


# Line Editor Options (Completion, Menu, Directory, etc.)
# autoMenu & autoList are on by default
setopt menuComplete
setopt autoCd
setopt globDots


## Create Aliases
alias ls='exa -laFh --git'
alias sz='source ~/.zshrc'
alias exa='exa -laFh --git'
alias man=batman
alias bbd='brew bundle dump --force --describe'
alias trail='<<<${(F)path}'
alias rm=trash
alias gs='git status'
# Load history into shell (shareHistory alternative)
alias lh='fc -RI; echo "loaded and showing..."; history;'


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


## Others

# Change Key Bindings
bindkey "^[[A" up-line-or-search
bindkey "^[[B" down-line-or-search 

# Add "zstyles" for Completions
# :completion:function:completer:command:argument:tag
zstyle ':completion:*:*:*:*:*' menu select

# Load "New" Completion System
autoload -Uz compinit && compinit