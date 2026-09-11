#!/bin/bash

set -e

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
DOTFILES_DIR="$(dirname "$SCRIPT_DIR")"

pacman -Qqe > "$DOTFILES_DIR/packages/pacman.txt"
paru -Qqm > "$DOTFILES_DIR/packages/aur.txt"

echo "Package list updated."

