#!/usr/bin/env bash

set -e

CONFIG_DIR="$HOME/.config/nvim"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing Neovim configuration..."

# Backup existing config
if [ -d "$CONFIG_DIR" ]; then
    echo "Existing config found, backing up..."
    mv "$CONFIG_DIR" "$CONFIG_DIR.backup.$(date +%Y%m%d%H%M%S)"
fi

mkdir -p "$HOME/.config"

cp -r "$SCRIPT_DIR/nvim" "$CONFIG_DIR"

echo "Neovim configuration installed!"
