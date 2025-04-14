#!/bin/bash

THEMER_DIR="$HOME/scripts/themer"
MODE_FILE="$THEMER_DIR/mode"
MODE=$(cat $MODE_FILE)
WALLPAPERS_DIR="$HOME/Wallpapers"
# Cycle between themes based on the current mode
case $MODE in
  0) # Gruvbox #
    feh --bg-fill "$WALLPAPERS_DIR/gruvbox/a_cup_of_coffee_on_a_table.jpg"
    wal --theme gruvbox
    kvantummanager --set Gruvbox-Dark-Brown
    "$THEMER_DIR/gtk-reload.sh" BetterGruvbox Gruvbox Adwaita
    pywalfox update
    echo 1 > "$MODE_FILE"
    ;;
  1) # Dracula #
    feh --bg-fill "$WALLPAPERS_DIR/dracula/dracula-waves-44475a.png"
    wal --theme dracula
    kvantummanager --set Dracula
    "$THEMER_DIR/gtk-reload.sh" Dracula Dracula Dracula-cursors
    pywalfox update
    echo 2 > "$MODE_FILE"
    ;;
  2) # Nord #
    feh --bg-fill "$WALLPAPERS_DIR/nord/a_city_street_with_buildings_and_windows.jpg"
    wal --theme nord
    kvantummanager --set Nord
    "$THEMER_DIR/gtk-reload.sh" Nord "Breeze Dark" breeze_cursors
    pywalfox update
    echo 0 > "$MODE_FILE"
    ;;
  *)
    echo 0 > "$MODE_FILE"
    ;;
esac


