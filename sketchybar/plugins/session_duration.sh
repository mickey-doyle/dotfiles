#!/bin/bash

# SketchyBar plugin for displaying time since last boot
# Filename: session_duration.sh

# Function to format time
format_time() {
    local total_minutes=$1
    local hours=$((total_minutes / 60))
    local minutes=$((total_minutes % 60))
    printf "%dh%dm" $hours $minutes
}

# Get the current time
current_time=$(date +%s)

# Get the last boot time
boot_time=$(sysctl -n kern.boottime | awk '{print $4}' | cut -d',' -f1)

# Calculate the session duration in seconds
session_duration=$((current_time - boot_time))

# Convert session duration to minutes
session_minutes=$((session_duration / 60))

# Format the session duration
formatted_duration=$(format_time $session_minutes)

# Output the formatted session duration for SketchyBar
sketchybar --set $NAME label="🧑🏻‍💻$formatted_duration"

# Optional: You can customize the appearance of the item here
# For example, to set a specific font and color:
# sketchybar --set $NAME label="Last Boot: $formatted_duration ago" \
#                         icon= \
#                         icon.font="Font Awesome 6 Free:Solid:16.0" \
#                         icon.color=0xffffffff \
#                         label.font="JetBrainsMono Nerd Font:Bold:14.0" \
#                         label.color=0xffffffff
