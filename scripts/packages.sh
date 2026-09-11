#!/bin/sh

pacman -Qqe > packages/pacman.txt
paru -Qqm > packages/aur.txt

echo "Package list updated."
