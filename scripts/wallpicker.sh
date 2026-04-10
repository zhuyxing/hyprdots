#!/usr/bin/env bash

# 1. Define Directories
WALLPAPER_DIR="$HOME/Pictures/Wallpapers"

# 2. Get a Random Wallpaper
# We filter for common image types and pick one at random using 'shuf'
SELECTED=$(ls "$WALLPAPER_DIR" | grep -E "\.(jpg|jpeg|png|gif|webp)$" | shuf -n 1)

# 3. Exit if nothing was found
[[ -z "$SELECTED" ]] && exit 0

FULL_PATH="$WALLPAPER_DIR/$SELECTED"

# 4. Apply with awww
awww img "$FULL_PATH" \
    --transition-type grow \
    --transition-duration 2 \
    --transition-fps 60 &

# 5. Update Colors with Matugen
matugen image "$FULL_PATH" --source-color-index 0 -q

# 6. Notify
notify-send -a "Wallpaper" "Random Selection" "Applied: $(basename "$FULL_PATH")" -u low -t 2000
