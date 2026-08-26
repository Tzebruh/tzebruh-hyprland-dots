# tzebruh-hyprland-dots

These are my personal Hyprland configuration files. I'm an absolute beginner to Arch and Hyprland so they may not be the best and the file contents are quite messy, but I think they're pretty good for a first time. I'll update this repo whenever I make big changes to them, but it should mostly stay the same for the time being.

# Notes
- To set dark theme on QT apps, open `qt6ct` and select your dark theme. The environment variable for QT themes is just set to qt6ct so manual configuration is needed for that.
- Since Hyprland updated to use lua config, Waybar's `hyprland/workspaces` module has been broken. To fix it, use an AUR helper like `yay` to instead install `waybar-git` for now. I have no idea when it will be fixed in the pacman version!
