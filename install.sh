#!/bin/sh
sudo pacman -Syu --needed hyprland hyprpaper hyprshot waybar wofi foot nautilus dunst otf-font-awesome pavucontrol ttf-dejavu-nerd
cp -a ./.config/. ~/.config/
