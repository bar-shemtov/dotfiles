#!/bin/bash

# Prompt message
prompt="Would you like to switch to gaming mode?"

# Display the Wofi menu
selection=$(echo -e "Yes\nNo" | wofi --dmenu --width 550 --height 200 --prompt "$prompt")

# Check if the user selected "Yes" or "No"
if [[ "$selection" == "Yes" ]]; then
    # Execute the gaming mode switch command
    steamos-desktop-return
elif [[ "$selection" == "No" ]]; then
    # Do nothing, just close the menu (menu will automatically close when no action is performed)
    exit 0
fi
