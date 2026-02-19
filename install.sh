#!/bin/bash

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Create symlinks
ln -sf "$DOTFILES_DIR/bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES_DIR/zshrc" "$HOME/.zshrc"

mkdir -p "$HOME/.config/alacritty"
ln -sf "$DOTFILES_DIR/config/alacritty/alacritty.toml" "$HOME/.config/alacritty/alacritty.toml" 2>/dev/null || 
ln -sf "$DOTFILES_DIR/config/alacritty/alacritty.yml" "$HOME/.config/alacritty/alacritty.yml" 2>/dev/null

mkdir -p "$HOME/.config/OpenRGB"
for f in "$DOTFILES_DIR/config/OpenRGB"/*; do
    ln -sf "$f" "$HOME/.config/OpenRGB/$(basename "$f")"
done

echo "Dotfiles symlinked successfully!"
