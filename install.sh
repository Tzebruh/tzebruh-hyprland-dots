#!/bin/sh
sudo pacman -Syu --needed hyprland hyprpaper hyprlock hyprshot waybar wofi foot nautilus dunst otf-font-awesome pavucontrol ttf-dejavu-nerd xdg-desktop-portal-gtk xdg-desktop-portal-hyprland gnome-themes-extra qt6ct hyprpolkitagent
cp -a ./.config/. ~/.config/
xdg-mime default org.gnome.Nautilus.desktop inode/directory
