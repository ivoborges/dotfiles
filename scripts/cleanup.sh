#!/bin/bash

sudo pacman -Rns $(pacman -Qtdq) 2>/dev/null
sudo pacman -Sc

