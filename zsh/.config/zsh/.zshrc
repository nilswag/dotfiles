
# ===========================================================================
# options
# ===========================================================================

# history stuff
HISTFILE="$XDG_CACHE_HOME/zsh/history"  # history file location
SAVEHIST=9999                           # max stored history stuff
HISTSIZE=9999                           # max in-memory history stuff

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