
# =========================
# = environment variables =
# =========================

# centralized data/cache/state folders
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"   

# personal binaries/scripts 
export PATH="$HOME/.local/bin:$PATH"

# default editor used by git, visudo, etc.
export EDITOR=nvim
export VISUAL=nvim


# =========================
# =        options        =
# =========================

# history stuff
HISTFILE="$XDG_CACHE_HOME/zsh/history"  # history file location
SAVEHIST=9999                           # max stored history stuff
HISTSIZE=9999                           # max in-memory history stuff

setopt EXTENDED_HISTORY                 # include timestamp
setopt HIST_IGNORE_DUPS                 # do not save duplicate of prior command
setopt HIST_IGNORE_SPACE                # do not save if line starts with space
setopt HIST_EXPIRE_DUPS_FIRST           # trim dupes first if history is full
setopt HIST_FIND_NO_DUPS                # do not display previously found command

# general options
setopt AUTOCD                           # automatic go into directories without typing cd
setopt NOBEEP                           # no annoying alerts
setopt NUMERIC_GLOB_SORT                # correctly sort names