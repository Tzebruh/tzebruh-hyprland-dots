#!/bin/sh
sudo pacman -Syu --needed hyprland hyprpaper hyprlock hyprshot waybar wofi foot nautilus dunst otf-font-awesome pavucontrol ttf-dejavu-nerd xdg-desktop-portal-gtk xdg-desktop-portal-hyprland gnome-themes-extra qt6ct polkit-kde-agent pipewire pipewire-pulse brightnessctl wl-copy hyprshutdown hyprpicker power-profiles-daemon gwenview vlc jq
cp -a ./.config/. ~/.config/
cp -a ./.local/bin/. ~/.local/bin/
xdg-mime default org.gnome.Nautilus.desktop inode/directory
for mime in image/jpeg image/png image/gif image/webp image/svg+xml image/avif; do
	xdg-mime default org.kde.gwenview.desktop "$mime"
done
for mime in video/mp4 video/x-matroska video/webm video/quicktime video/x-msvideo; do
	xdg-mime default vlc.desktop "$mime"
done
