#!/bin/zsh

# =============================================================================
# ZSH Configuration
# =============================================================================


# Carica variabili private se presenti
if [ -f "$HOME/.zshenv" ]; then
    source "$HOME/.zshenv"
fi

# Load aliases if they exist
if [ -f ~/.zsh_aliases ]; then
    source ~/.zsh_aliases
fi

# Zsh options
setopt AUTO_CD              # Change directory without typing cd
setopt HIST_VERIFY          # Show command with history expansion to user before running it
setopt SHARE_HISTORY        # Share command history data
setopt HIST_IGNORE_DUPS     # Don't record duplicate entries
setopt HIST_IGNORE_SPACE    # Don't record entries that start with a space

# History configuration
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Enable completion system
autoload -Uz compinit
compinit

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'