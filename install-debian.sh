#!/bin/sh

# Setup backports repo
sudo cp trixie-backports.list /etc/apt/sources.list.d/trixie-backports.list
sudo apt update

# Install backported packages
sudo apt install -t trixie-backports hyprland hyprpaper hyprlock waybar xdg-desktop-portal-hyprland pipewire pipewire-pulse hyprland-guiutils hyprshutdown

# Install normal packages
sudo apt install wofi foot dolphin dunst fonts-font-awesome pavucontrol xdg-desktop-portal-gtk gnome-themes-extra qt6ct polkit-kde-agent-1 brightnessctl wl-clipboard jq grim slurp libnotify-bin hyprpicker power-profiles-daemon gwenview vlc

# Missing from Arch: hyprshot, ttf-dejavu-nerd

# Configure
cp -a ./.config/. ~/.config/
cp -a ./.local/bin/. ~/.local/bin/
cp ./foot-debian.ini ~/.config/foot/foot.ini
sudo ln -s /usr/lib/x86_64-linux-gnu/libexec/polkit-kde-authentication-agent-1 /usr/lib/polkit-kde-authentication-agent-1
xdg-mime default org.gnome.dolphin.desktop inode/directory
for mime in image/jpeg image/png image/gif image/webp image/svg+xml image/avif; do
	xdg-mime default org.kde.gwenview.desktop "$mime"
done
for mime in video/mp4 video/x-matroska video/webm video/quicktime video/x-msvideo; do
	xdg-mime default vlc.desktop "$mime"
done

# Manual install of hyprshot
sudo wget -O /usr/bin/hyprshot https://raw.githubusercontent.com/Gustash/Hyprshot/refs/heads/main/hyprshot
sudo chmod +x /usr/bin/hyprshot

# Manual install of DejaVuSansM Nerd Font
mkdir -p ~/.local/share/fonts/DejaVuSansMono
cd ~/.local/share/fonts/DejaVuSansMono
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.5.1/DejaVuSansMono.zip
unzip DejaVuSansMono.zip
rm DejaVuSansMono.zip
fc-cache -fv
