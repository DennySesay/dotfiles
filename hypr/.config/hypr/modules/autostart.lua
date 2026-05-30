-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:

hl.on("hyprland.start", function ()
  hl.exec_cmd("nm-applet")
  hl.exec_cmd("systemctl --user start waybar & awww-daemon & swaync")
  hl.exec_cmd("systemctl --user start hyprpolkitagent")
  hl.exec_cmd("wl-paste --type text --watch cliphist store")
  hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
  hl.exec_cmd("gnome-keyring-daemon --start --components=secrets") 
  hl.exec_cmd("wl-paste --type image --watch cliphist store")
  hl.exec_cmd("hypridle")
  hl.exec_cmd("hyprsunset")
end)
