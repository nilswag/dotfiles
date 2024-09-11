# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set the zinit home directory.
ZINIT_HOME="${HOME}/zinit/zinit.git"

# Check if zinit is installed, if not download it.
if [ ! -d "${ZINIT_HOME}" ]; then
    mkdir -p "dirname ${ZINIT_HOME}"
    git clone https://github.com/zdharma-continuum/zinit.git "${ZINIT_HOME}"
fi

# Source/Load zinit.
source "${ZINIT_HOME}/zinit.zsh"

# Setup powerlevel10k.
zinit ice depth=1; zinit light romkatv/powerlevel10k

# Add zsh plugins.
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

# Load autocompletions.
autoload -U compinit && compinit

# Bind autosuggest completion to <C-f>.
bindkey "^f" autosuggest-accept

# Set autosuggest history.
HISTSIZE=5000
HISTFILE="~/.zsh_history"
SAVEHIST=${HISTSIZE}
HISTDUPE=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Set completion styling.
zstyle ":completion:*" matcher-list "m:{a-z}={A-Za-z}"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Personal aliases.
alias dev="/mnt/c/users/nilsw/documents/dev"
alias dotfiles="git -C ~/.dotfiles"

alias vim="nvim"
alias ls="exa"

