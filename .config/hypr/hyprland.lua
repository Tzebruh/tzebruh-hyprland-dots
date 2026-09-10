-- TZEBRUH-HYPRLAND
-- An alright Hyprland config

-- Monitors
hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = 1,
})

-- Environment Variables
hl.env("XCURSOR_SIZE", 24)
hl.env("HYPRCURSOR_SIZE", 24)
hl.env("XDG_DATA_DIRS", "/usr/local/share/:/usr/share/:/var/lib/flatpak/exports/share")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")

-- Config
hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 20,
        border_size = 3,
        resize_on_border = false,
        allow_tearing = false,
        layout = "dwindle",
        col = {
            active_border = { colors = { "rgba(33ccffee)", "rgba(00ff99ee)" }, angle = 45 },
            inactive_border = "rgba(808080e6)",
        },
    },
})

hl.config({
    decoration = {
        rounding = 7,
        rounding_power = 2,
        active_opacity = 1.0,
        inactive_opacity = 1.0,
        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)",
        },
        blur = {
            enabled = true,
            size = 3,
            passes = 1,
            vibrancy = 0.1696,
        },
    },
})

hl.config({
    animations = {
        enabled = true,
    },
})

hl.config({
    cursor = {
        no_hardware_cursors = 1,
    },
})

-- Curves
hl.curve("easeOutQuint",     { type = "bezier", points = { {0.23, 1},    {0.32, 1} } })
hl.curve("easeInOutCubic",   { type = "bezier", points = { {0.65, 0.05}, {0.36, 1} } })
hl.curve("linear",           { type = "bezier", points = { {0, 0},       {1, 1} } })
hl.curve("almostLinear",     { type = "bezier", points = { {0.5, 0.5},   {0.75, 1.0} } })
hl.curve("quick",            { type = "bezier", points = { {0.15, 0},    {0.1, 1} } })
hl.curve("easeOutBack",      { type = "bezier", points = { {0.34, 1.56}, {0.64, 1} } })
hl.curve("easeOutBackLess",  { type = "bezier", points = { {0.34, 1.2},  {0.4, 1} } })

-- Animations
hl.animation({ leaf = "global",         enabled = true, speed = 10,   bezier = "default" })
hl.animation({ leaf = "border",         enabled = true, speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows",        enabled = true, speed = 4.79, bezier = "easeOutQuint" })
hl.animation({ leaf = "windowsIn",      enabled = true, speed = 4.1,  bezier = "easeOutBackLess" }) -- mine
hl.animation({ leaf = "windowsOut",     enabled = true, speed = 1.49, bezier = "linear",       style = "popin 87%" })
hl.animation({ leaf = "windowsMove",    enabled = true, speed = 4.1,  bezier = "easeOutBackLess" }) -- mine
hl.animation({ leaf = "fadeIn",         enabled = true, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut",        enabled = true, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade",           enabled = true, speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers",         enabled = true, speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn",       enabled = true, speed = 4,    bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut",      enabled = true, speed = 1.5,  bezier = "linear",       style = "fade" })
hl.animation({ leaf = "fadeLayersIn",   enabled = true, speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut",  enabled = true, speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces",     enabled = true, speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesIn",   enabled = true, speed = 4,    bezier = "easeOutQuint" })
hl.animation({ leaf = "workspacesOut",  enabled = true, speed = 4,    bezier = "easeOutQuint" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 4, bezier = "easeOutQuint", style = "slidevert" })

-- Layout config
hl.config({
    dwindle = {
        preserve_split = true,
    },
})

hl.config({
    master = {
        new_status = "slave",
    },
})

-- Misc config
hl.config({
    misc = {
        force_default_wallpaper = -1,
        disable_hyprland_logo = true,
    },
})

-- Input
hl.config({
    input = {
        kb_layout = "us",
        follow_mouse = 1,
        sensitivity = 0,
        touchpad = {
            natural_scroll = true,
        },
    },
})

-- KEYBINDS
local mainMod = "SUPER"

-- Keybinds: Programs
hl.bind(mainMod .. " + " .. "Q", hl.dsp.exec_cmd('foot -o font="DejaVuSansM Nerd Font Mono:size=16"'))

hl.bind(mainMod .. " + " .. "E", hl.dsp.exec_cmd("nautilus -w"))

hl.bind(mainMod .. " + " .. "B", hl.dsp.exec_cmd("xdg-open \"http://\""))

hl.bind(mainMod .. " + " .. "R", hl.dsp.exec_cmd("wofi --show drun --allow-images --prompt 'Launch Program' --insensitive"))

-- Keybinds: Window Management
-- ..: Basic
hl.bind(mainMod .. " + " .. "C", hl.dsp.window.close())

hl.bind(mainMod .. " + " .. "F", hl.dsp.window.fullscreen())

hl.bind(mainMod .. " + " .. "V", hl.dsp.window.float())

hl.bind(mainMod .. " + " .. "P", hl.dsp.window.pseudo())

-- ..: Window Movement
hl.bind(mainMod .. " + " .. "left", hl.dsp.focus({ direction = "left" }))

hl.bind(mainMod .. " + " .. "right", hl.dsp.focus({ direction = "right" }))

hl.bind(mainMod .. " + " .. "up", hl.dsp.focus({ direction = "up" }))

hl.bind(mainMod .. " + " .. "down", hl.dsp.focus({ direction = "down" }))

hl.bind("ALT + tab", hl.dsp.window.cycle_next())
hl.bind("ALT + SHIFT + tab", hl.dsp.window.cycle_next({ next = false }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "left", hl.dsp.window.move({ direction = "left" }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "right", hl.dsp.window.move({ direction = "right" }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "up", hl.dsp.window.move({ direction = "up" }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "down", hl.dsp.window.move({ direction = "down" }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "return", hl.dsp.window.center())

hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "left", hl.dsp.window.resize({ x = -100, y = 0, relative = true }))

hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "right", hl.dsp.window.resize({ x = 100, y = 0, relative = true }))

hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "up", hl.dsp.window.resize({ x = 0, y = 100, relative = true }))

hl.bind(mainMod .. " + " .. "CTRL" .. " + " .. "down", hl.dsp.window.resize({ x = 0, y = -100, relative = true }))

hl.bind(mainMod .. " + " .. "J", function()
    if (hl.get_active_workspace().tiled_layout == "dwindle") then
        hl.dispatch(hl.dsp.layout("togglesplit"))
    end
end)
hl.bind(mainMod .. " + " .. "K", function()
    if (hl.get_active_workspace().tiled_layout == "dwindle") then
        hl.dispatch(hl.dsp.layout("swapsplit"))
    end
end)

hl.bind(mainMod .. " + " .. "mouse:272", hl.dsp.window.drag(), { mouse = true })

hl.bind(mainMod .. " + " .. "mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Keybinds: Workspaces
-- ..: Normal
hl.bind(mainMod .. " + " .. 1, hl.dsp.focus({ workspace = 1 }))

hl.bind(mainMod .. " + " .. 2, hl.dsp.focus({ workspace = 2 }))

hl.bind(mainMod .. " + " .. 3, hl.dsp.focus({ workspace = 3 }))

hl.bind(mainMod .. " + " .. 4, hl.dsp.focus({ workspace = 4 }))

hl.bind(mainMod .. " + " .. 5, hl.dsp.focus({ workspace = 5 }))

hl.bind(mainMod .. " + " .. 6, hl.dsp.focus({ workspace = 6 }))

hl.bind(mainMod .. " + " .. 7, hl.dsp.focus({ workspace = 7 }))

hl.bind(mainMod .. " + " .. 8, hl.dsp.focus({ workspace = 8 }))

hl.bind(mainMod .. " + " .. 9, hl.dsp.focus({ workspace = 9 }))

hl.bind(mainMod .. " + " .. 0, hl.dsp.focus({ workspace = 10 }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 1, hl.dsp.window.move({ workspace = 1 }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 2, hl.dsp.window.move({ workspace = 2 }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 3, hl.dsp.window.move({ workspace = 3 }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 4, hl.dsp.window.move({ workspace = 4 }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 5, hl.dsp.window.move({ workspace = 5 }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 6, hl.dsp.window.move({ workspace = 6 }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 7, hl.dsp.window.move({ workspace = 7 }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 8, hl.dsp.window.move({ workspace = 8 }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 9, hl.dsp.window.move({ workspace = 9 }))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. 0, hl.dsp.window.move({ workspace = 10 }))

hl.bind(mainMod .. " + " .. "mouse_down", hl.dsp.focus({ workspace = "e+1" }))

hl.bind(mainMod .. " + " .. "mouse_up", hl.dsp.focus({ workspace = "e-1" }))

local next_layout = {
    ["dwindle"] = "master",
    ["master"] = "scrolling",
    ["scrolling"] = "dwindle"
}
hl.bind(mainMod .. " + " .. "tab", function()
    local ws = hl.get_active_workspace()
    local new_layout = next_layout[ws.tiled_layout]
    hl.workspace_rule({
	workspace = tostring(ws.id),
	layout = new_layout
    })
    hl.dispatch(hl.dsp.exec_cmd('dunstify -r 2595 -t 2000 "Layout changed" "Workspace ' .. ws.id .. ' layout set to ' .. new_layout .. '"'))
end)

-- ..: Special
hl.bind(mainMod .. " + " .. "S", hl.dsp.workspace.toggle_special("magic"))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "S", hl.dsp.window.move({ workspace = "special:magic" }))


-- Keybinds: Shell
hl.bind("Print", hl.dsp.exec_cmd("hyprshot -z -m region --clipboard-only"))

hl.bind(mainMod .. " + " .. "L", hl.dsp.exec_cmd("hyprlock"))

hl.bind(mainMod .. " + " .. "ESCAPE", hl.dsp.exec_cmd("~/.local/bin/tze-power-menu"))

hl.bind(mainMod .. " + " .. "F1", function()
    local power_saver = (hl.get_config("animations.enabled") == false)

    if power_saver then
	hl.config({
	    animations = { enabled = true },
	    decoration = {
		shadow = { enabled = true },
		blur = { enabled = true }
	    }
	})

	hl.dispatch(hl.dsp.exec_cmd("powerprofilesctl set performance"))

        hl.dispatch(hl.dsp.exec_cmd('dunstify -r 2596 -t 2000 "Power saver disabled"'))
    else
	hl.config({
	    animations = { enabled = false },
	    decoration = {
		shadow = { enabled = false },
		blur = { enabled = false }
	    }
	})

	hl.dispatch(hl.dsp.exec_cmd("powerprofilesctl set power-saver"))

        hl.dispatch(hl.dsp.exec_cmd('dunstify -r 2596 -t 2000 "Power saver enabled"'))
    end
end)

-- Keybinds: Other
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+; ~/.local/bin/tze-volume-notif"), { locked = true })

hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-; ~/.local/bin/tze-volume-notif"), { locked = true })

hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle; ~/.local/bin/tze-volume-notif"), { locked = true })

hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+; ~/.local/bin/tze-brightness-notif"), { locked = true })

hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-; ~/.local/bin/tze-brightness-notif"), { locked = true })

-- Requires playerctl

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })

hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })

hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })

hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- RULES
-- Rules: Window Rules
hl.window_rule({
    name  = "suppress_maximize",
    match = {
        class = ".*",
    },
    suppress_event = "maximize"
})

hl.window_rule({
    name  = "xwayland_drag_fix",
    match = {
        class = "^$",
        title = "^$",
        xwayland = 1,
    },
    no_focus = true
})

hl.window_rule({
    match = {
	class = "org.kde.gwenview"
    },
    float = true
})

hl.window_rule({
    match = {
	class = "vlc"
    },
    float = true
})

-- Rules: Layer Rules
hl.layer_rule({
    match = {
	namespace = "notifications"
    },
    blur = true,
    above_lock = 1,
    animation = "slide right"
})

hl.layer_rule({
    match = {
	namespace = "wofi"
    },
    blur = true,
    dim_around = true,
    animation = "popin 70%"
})

hl.layer_rule({
    match = {
	namespace = "waybar"
    },
    blur = true
})

hl.layer_rule({
    match = {
	namespace = "hyprshutdown"
    },
    blur = true
})

-- Start/reload events
hl.on("hyprland.start", function()
    hl.exec_cmd("waybar & hyprpaper & dunst & /usr/lib/polkit-kde-authentication-agent-1 &")
end)

hl.on("config.reloaded", function()
    hl.exec_cmd('gsettings set org.gnome.desktop.interface color-scheme "prefer-dark" & gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark" & powerprofilesctl set performance')
end)
