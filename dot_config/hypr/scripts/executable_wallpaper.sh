#!/bin/bash
## Get the directory of wallpapers
WALLPAPER_DIR="/home/mike-arch/.config/hypr/wallpapers"
# Get a random wallpaper from the directory
WALLPAPER=$(ls $WALLPAPER_DIR | shuf -n1)
# Set the wallpaper
swaybg -o \* -i "$WALLPAPER_DIR/$WALLPAPER" -m fill

