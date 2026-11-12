# niri-waybar-mocha

Custom Waybar configuration for the [niri](https://github.com/YaLTeR/niri) Wayland compositor, themed with **Catppuccin Mocha**.

## Features

- Native `niri/workspaces` and `niri/window` modules
- Catppuccin Mocha color palette (official definitions)
- Calendar tooltip matching Mocha
- Modules: clock, tray, wireplumber, cpu, memory, network, temperature, battery, power menu
- Portable power menu script (fuzzel + niri logout)

## Installation

```bash
# Backup existing config if present
[ -d ~/.config/waybar ] && mv ~/.config/waybar ~/.config/waybar.bak

# Clone into place
git clone https://github.com/gary21828/niri-waybar-mocha.git ~/.config/waybar

# Make power menu executable
chmod +x ~/.config/waybar/scripts/power-menu.sh

# Reload Waybar
pkill -SIGUSR2 waybar || waybar &
```

## Requirements

- Waybar ≥ 0.14 (tested with 0.15)
- niri
- Font Awesome (for icons)
- fuzzel (power menu)
- Optional: pavucontrol, nm-connection-editor, swaylock

## Files

| File | Purpose |
|------|---------|
| `config.jsonc` | Waybar module configuration |
| `style.css` | Catppuccin Mocha styling |
| `scripts/power-menu.sh` | Power menu launcher |

## Theme

Uses the official [Catppuccin Mocha](https://github.com/catppuccin/waybar) palette via `@define-color` variables in `style.css`. Calendar colors in the clock module are also Mocha-matched.

## License

MIT
