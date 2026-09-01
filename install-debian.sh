#!/bin/sh

# Setup backports repo
sudo cp trixie-backports.list /etc/apt/sources.list.d/trixie-backports.list
sudo apt update

# Install backported packages
sudo apt install -t trixie-backports hyprland hyprpaper hyprlock waybar xdg-desktop-portal-hyprland pipewire pipewire-pulse hyprland-guiutils

# Install normal packages
sudo apt install wofi foot nautilus dunst fonts-font-awesome pavucontrol xdg-desktop-portal-gtk gnome-themes-extra qt6ct polkit-kde-agent-1 brightnessctl wl-clipboard

# Missing from Arch: hyprshot, ttf-dejavu-nerd

# Configure
cp -a ./.config/. ~/.config/
cp -a ./.local/bin/. ~/.local/bin/
cp ./foot-debian.ini ~/.config/foot/foot.ini
sudo ln -s /usr/lib/x86_64-linux-gnu/libexec/polkit-kde-authentication-agent-1 /usr/lib/polkit-kde-authentication-agent-1
xdg-mime default org.gnome.Nautilus.desktop inode/directory

# Manual install of DejaVuSansM Nerd Font
mkdir -p ~/.local/share/fonts/DejaVuSansMono
cd ~/.local/share/fonts/DejaVuSansMono
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.5.1/DejaVuSansMono.zip
unzip DejaVuSansMono.zip
rm DejaVuSansMono.zip
fc-cache -fv
