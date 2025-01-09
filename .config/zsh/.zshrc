ZSH_CONFIG="$HOME/.config/zsh"

# i do not know
autoload -Uz promptinit
promptinit

# init completion
autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C

# no duplicates in history
setopt histignoredups

# append history immediately, not waiting for exit
setopt inc_append_history

# auto-completion menu
zstyle ':completion:*' menu select
# same for sudo
zstyle ':completion::complete:*' gain_privileges 1

# auto-complete aliases seems to be broken
#setopt completealiases

# show hidden files for auto-completion
setopt globdots

# enable word splits at slashes
WORDCHARS=${WORDCHARS/\/}

source $ZSH_CONFIG/alias.zsh
source $ZSH_CONFIG/colors.zsh
source $ZSH_CONFIG/prompt.zsh
source $ZSH_CONFIG/defaults.zsh

# syntax-highlighting must be sourced before history search
source $ZSH_CONFIG/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH_CONFIG/zsh-search-history/zsh-history-substring-search.zsh
source $ZSH_CONFIG/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH_CONFIG/git.zsh
source $ZSH_CONFIG/dotfiles.zsh

# zsh-history-substring-search configuration
bindkey '^[[A' history-substring-search-up # or '\eOA'
bindkey '^[[B' history-substring-search-down # or '\eOB'
HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1
