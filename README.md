# dotfiles

My personal Hyprland desktop configurations, managed cleanly with GNU Stow.

![Desktop Screenshot](assets/screenshot.png)

## 🚀 Components Included
* **Hyprland**: Configured via a modular Lua configuration system.
* **Waybar**: Clean desktop status bar.
* **Fuzzel**: Lightweight launcher & custom utility scripts:
  * `Alt + R`: Powermenu
  * `Alt + W`: Wi-Fi Manager
  * `Alt + C`: Clipboard History
  * `Alt + X`: Screenshot Menu
  * Clicking Waybar icons opens these menus directly.
* **Wallpapers**: Curated wallpaper selection stored directly in `wallpapers/`.

## ⚙️ Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
   ```
2. Navigate to the folder and link the configurations using Stow:
   ```bash
   cd ~/dotfiles
   stow hypr waybar fuzzel bin
   ```

## 🤝 Credits
* The Waybar configuration was mostly provided by **HANCORE**, but modified by me to make it work on normal Hyprland and adapted to work with Fuzzel.
