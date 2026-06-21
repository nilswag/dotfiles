#!/bin/zsh

# automatically change shell to zsh
if [[ "$(basename "$SHELL")" != "zsh" ]]; then
     echo "default shell is not zsh"

     local ZSH_PATH="$(command -v zsh)"

     if [[ -n "$ZSH_PATH" ]]; then
          sudo chsh -s "$ZSH_PATH" "$USER"
     else
          echo "zsh not installed"
          exit 1
     fi
fi

# options
HISTFILE="$XDG_CACHE_HOME/zsh/history"  # history file location
HISTSIZE=5000                           # max stored commands on disk
SAVEHIST=5000                           # max stored commands in memory

setopt AUTO_CD                          # automatically use cd for non-commands which are directories
setopt AUTO_PUSHD                       # automatically use pushd when using cd
setopt PUSHD_IGNORE_DUPS                # don't push duplicates to directory stack
setopt ALWAYS_TO_END                    # always move cursor to end of completion
setopt APPEND_HISTORY                   # append to history instead of replacing
setopt HIST_FIND_NO_DUPS                # don't display duplicates
setopt HIST_IGNORE_ALL_DUPS             # replace older duplicates with newer ones
setopt HIST_IGNORE_DUPS                 # don't add duplicates to command list
setopt HIST_SAVE_NO_DUPS                # don't save duplicates to history file
setopt SHARE_HISTORY                    # share history between different open shells

# completion
autoload -U compinit
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump"
zstyle ":completion:*" menu select
zstyle ":completion:*" matcher-list "m:{a-z}={A-Za-z}"

# config files
# aliases
source "$ZDOTDIR/aliases.zsh"

# prompt/theme
source "$ZDOTDIR/prompt.zsh"

# custom keybinds