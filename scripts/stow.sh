#!/bin/bash

set -e 

cd "$(dirname "$0")/.."

stow alacritty
stow bash
stow ghostty
stow mpd
stow mpv 
stow nvim
stow rmpc
stow yazi
stow zathura
stow zed

