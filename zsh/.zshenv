# ===========================================================================
# environment variables
# ===========================================================================

# centralized data/cache/state folders
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"   
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# personal binaries/scripts
export PATH="$HOME/.local/bin:$PATH"

# default editor used by git, visudo, etc.
export EDITOR=nvim
export VISUAL=nvim

# pager
export MANPAGER="bat -l man -p"

# starship config
export STARSHIP_CONFIG="$ZDOTDIR/starship.toml"