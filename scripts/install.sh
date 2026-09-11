#! /bin/sh

sudo pacman -S --needed - < packages/pacman.txt
paru -S --needed - < packages/aur.txt


