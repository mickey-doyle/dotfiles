#!/bin/bash

# Function to get the ordinal suffix for a number
get_ordinal_suffix() {
    case "$1" in
        *1[0-9] | *[04-9]) echo "th";;
        *1) echo "st";;
        *2) echo "nd";;
        *3) echo "rd";;
        *) echo "th";;
    esac
}

# Get the current date
current_date=$(date '+%a.%b.%-d')

# Get the day of the month as a number
day_number=$(date '+%-d')

# Get the ordinal suffix
suffix=$(get_ordinal_suffix "$day_number")

# Construct the final date string
formatted_date="${current_date}${suffix}"

# Update sketchybar
sketchybar --set "$NAME" label="$formatted_date"
