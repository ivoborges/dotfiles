#!/bin/bash

set -e

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
DOTFILES_DIR="$(dirname "$SCRIPT_DIR")"

sudo pacman -S --needed - < "$DOTFILES_DIR/packages/pacman.txt"
paru -S --needed - < "$DOTFILES_DIR/packages/aur.txt"

"$SCRIPT_DIR/stow.sh"

