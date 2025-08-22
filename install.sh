#!/bin/sh
sudo pacman -Syu --needed hyprland hyprpaper hyprshot waybar wofi foot nautilus otf-font-awesome pavucontrol ttf-dejavu-nerd
cp -a ./.config/. ~/.config/
