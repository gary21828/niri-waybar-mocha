#!/usr/bin/env bash
# ~/.config/waybar/scripts/power-menu.sh
# Power menu for the waybar custom/power button (fuzzel dmenu).
set -u

choice=$(
    printf '%s\n' "Lock" "Log out" "Suspend" "Reboot" "Power off" |
        fuzzel --dmenu --prompt 'Power  ' --width 22 --lines 5
) || exit 0

case "${choice}" in
    Lock)       swaylock -f ;;
    "Log out")  niri msg action quit --skip-confirmation ;;
    Suspend)    systemctl suspend ;;
    Reboot)     systemctl reboot ;;
    "Power off") systemctl poweroff ;;
esac
