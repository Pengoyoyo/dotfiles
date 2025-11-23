#!/bin/bash

# Wallpaper directory
WALLPAPER_DIR="$HOME/Pictures/Wallpapers"

# Get random wallpaper or use passed argument
if [ -z "$1" ]; then
    WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" \) | shuf -n 1)
else
    WALLPAPER="$1"
fi

# Generate colors and set wallpaper with matugen
matugen image "$WALLPAPER"

# Send notification
notify-send "Wallpaper Changed" "Generated new colorscheme" -i "$WALLPAPER"
