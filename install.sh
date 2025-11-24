#!/bin/bash

# Script per installare i dotfiles nella home directory
# This script installs dotfiles (.zshrc, .zprofile, .zsh_aliases) to the home directory

echo "🏠 Installing dotfiles to home directory..."

# Directory corrente dello script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Directory home dell'utente
HOME_DIR="$HOME"

# Lista dei file da installare
FILES=(".zshrc" ".zprofile" ".zsh_aliases" ".zshenv")

# Installazione dei file
for file in "${FILES[@]}"; do
    if [ -f "$SCRIPT_DIR/$file" ]; then
        echo "📄 Installing $file..."
        
        # Copia il file
        cp "$SCRIPT_DIR/$file" "$HOME_DIR/$file"
        
        echo "✅ $file installed successfully"
    else
        echo "⚠️  Warning: $file not found in $SCRIPT_DIR"
    fi
done

echo ""
echo "🎉 Installation completed!"
echo "📝 To apply the changes, run: source ~/.zshrc"
echo "   Or restart your terminal session"

# Verifica se zsh è la shell corrente
if [ "$SHELL" != "$(which zsh)" ]; then
    echo ""
    echo "💡 Note: Your current shell is $SHELL"
    echo "   Consider changing to zsh with: chsh -s $(which zsh)"
fi
