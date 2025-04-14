#!/bin/bash

# Check if all arguments are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <GTK_THEME> <ICON_THEME> <CURSOR_THEME>"
    exit 1
fi

# Define your theme, icon theme, cursor theme, and font
GTK_THEME="$1"
ICON_THEME="$2"
CURSOR_THEME="$3"
FONT="CaskaydiaCoveNerdFont 11"

# Paths to configuration files
GTK3_CONFIG="$HOME/.config/gtk-3.0/settings.ini"
GTK2_CONFIG="$HOME/.gtkrc-2.0"

# Create gtk-3.0 settings file if it doesn't exist
mkdir -p "$HOME/.config/gtk-3.0"
if [ ! -f "$GTK3_CONFIG" ]; then
    touch "$GTK3_CONFIG"
fi

# Write to the GTK3 config file
echo "[Settings]" > "$GTK3_CONFIG"
echo "gtk-theme-name = $GTK_THEME" >> "$GTK3_CONFIG"
echo "gtk-icon-theme-name = $ICON_THEME" >> "$GTK3_CONFIG"
echo "gtk-font-name = $FONT" >> "$GTK3_CONFIG"
echo "gtk-cursor-theme-name = $CURSOR_THEME" >> "$GTK3_CONFIG"

# Write to the GTK2 config file
echo "gtk-theme-name = \"$GTK_THEME\"" > "$GTK2_CONFIG"
echo "gtk-icon-theme-name = \"$ICON_THEME\"" >> "$GTK2_CONFIG"
echo "gtk-font-name = \"$FONT\"" >> "$GTK2_CONFIG"
echo "gtk-cursor-theme-name = \"$CURSOR_THEME\"" >> "$GTK2_CONFIG"

echo "GTK theme, icons, and cursor successfully updated!"
