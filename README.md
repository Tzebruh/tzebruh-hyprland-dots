# tzebruh-hyprland-dots

These are my personal Hyprland configuration files. This repo is a [Ship of Theseus](https://en.wikipedia.org/wiki/Ship_of_Theseus) of my first ever Hyprland setup, and therefore the configuration is extremely messy. However, I think I've gotten it to look quite good. Maybe one day I'll learn how to use Quickshell or something, but for now I'm pretty happy with this.

# Notes
- To set dark theme on QT apps, open `qt6ct` and select your dark theme. The environment variable for QT themes is just set to qt6ct so manual configuration is needed for that.
- Since Hyprland updated to use lua config, Waybar's `hyprland/workspaces` module has been broken. To fix it, use an AUR helper like `yay` to instead install `waybar-git` for now. I have no idea when it will be fixed in the pacman version!
- Debian support is super experimental yada yada basically it sucks
