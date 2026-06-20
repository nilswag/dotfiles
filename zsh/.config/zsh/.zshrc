
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

# ===========================================================================
# options
# ===========================================================================

# history stuff
HISTFILE="$XDG_CACHE_HOME/zsh/history"  # history file location
HISTSIZE=5000                           # max stored commands on disk
SAVEHIST=5000                           # max stored commands in memory

setopt APPEND_HISTORY                   # append to history instead of replacing

setopt EXTENDED_HISTORY                 # include timestamp
setopt HIST_IGNORE_DUPS                 # do not save duplicate of prior command
setopt HIST_IGNORE_SPACE                # do not save if line starts with space
setopt HIST_EXPIRE_DUPS_FIRST           # trim dupes first if history is full
setopt HIST_FIND_NO_DUPS                # do not display previously found command

# general options
setopt AUTOCD                           # automatic go into directories without typing cd
setopt NOBEEP                           # no annoying alerts
setopt NUMERIC_GLOB_SORT                # correctly sort names


# ===========================================================================
# config files
# ===========================================================================

# aliases
source "$ZDOTDIR/aliases.zsh"

# custom keybinds

# prompt/theme
source "$ZDOTDIR/prompt.zsh"