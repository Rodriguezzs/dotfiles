#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Pictures/Wallpapers"
INTERVAL=600

mkdir -p "$WALLPAPER_DIR"

while true; do
    mapfile -t IMAGE_FILES < <(find "$WALLPAPER_DIR" -maxdepth 1 -type f \
        \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" -o -iname "*.jpeg" \))

    [ ${#IMAGE_FILES[@]} -eq 0 ] && exit 1

    SELECTED_PATH="${IMAGE_FILES[RANDOM % ${#IMAGE_FILES[@]}]}"

    swww img \
        --transition-type simple \
        --transition-step 20 \
        --transition-fps 60 \
        --resize crop \
        --filter Mitchell \
        "$SELECTED_PATH"

    sleep "$INTERVAL"
done