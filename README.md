# niri-waybar-mocha

Custom [niri](https://github.com/YaLTeR/niri) configuration and matching Waybar setup, themed with **Catppuccin Mocha**.

## Features

### niri (`config.kdl`)
- Catppuccin Mocha colors (background base `#1e1e2e`, focus ring blue `#89b4fa`, surface inactive)
- Preset column widths (1/3, 1/2, 2/3) with `Mod+R` cycling
- Practical autostart: waybar, mako, wlsunset (manual times), swayidle, fcitx5, nm-applet, cliphist
- Dual hjkl + arrow navigation, overview, floating/tabbed, media keys
- Firefox Picture-in-Picture floats by default
- `prefer-no-csd` and soft shadows

### Waybar
- Native `niri/workspaces` and `niri/window` modules
- Official Catppuccin Mocha palette via `@define-color`
- Calendar tooltip matched to Mocha
- Modules: clock, tray, wireplumber, cpu, memory, network, temperature, battery, power menu
- Portable power menu script (fuzzel + niri logout)

## Installation

```bash
# niri config
mkdir -p ~/.config/niri
# Copy or clone config.kdl into ~/.config/niri/
# niri live-reloads on save

# Waybar
[ -d ~/.config/waybar ] && mv ~/.config/waybar ~/.config/waybar.bak
git clone https://github.com/gary21828/niri-waybar-mocha.git ~/.config/waybar
# Or copy only the waybar files (config.jsonc, style.css, scripts/)

chmod +x ~/.config/waybar/scripts/power-menu.sh
pkill -SIGUSR2 waybar || waybar &
```

Place `config.kdl` at `~/.config/niri/config.kdl`.

## Requirements

- niri (tested on 26.04)
- Waybar ≥ 0.14 (tested with 0.15)
- Font Awesome (icons)
- fuzzel (launcher / power menu)
- Optional: mako, wlsunset, swayidle, fcitx5, nm-applet, alacritty, brightnessctl, playerctl, wpctl

## Files

| File | Purpose |
|------|---------|
| `config.kdl` | niri window manager configuration (Mocha-aligned) |
| `config.jsonc` | Waybar module configuration |
| `style.css` | Catppuccin Mocha styling for Waybar |
| `scripts/power-menu.sh` | Power menu launcher |

## Theme

Uses the official [Catppuccin Mocha](https://github.com/catppuccin/waybar) palette. niri focus ring, background, and shadows are matched to the same colors used in Waybar.

## License

MIT
