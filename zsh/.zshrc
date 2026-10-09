
# zinit setup
# set directory for storing zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# download zinit if it does not exist
if [ ! -d $ZINIT_HOME ]; then
	mkdir -p "$(dirname $ZINIT_HOME)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# load zinit
source "${ZINIT_HOME}/zinit.zsh"
