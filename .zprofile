
#!/bin/zsh
# Carica variabili private se presenti
if [ -f "$HOME/.zshenv" ]; then
	source "$HOME/.zshenv"
fi

# =============================================================================
# Environment Configuration (.zprofile)
# This file is loaded for login shells
# =============================================================================

# Homebrew environment
eval "$(/opt/homebrew/bin/brew shellenv)"

# Python/pip3 PATH
export PATH="$PATH:/usr/local/bin/pip3"

# NVM (Node Version Manager) configuration
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Locale settings
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
