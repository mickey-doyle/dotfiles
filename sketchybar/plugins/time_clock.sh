#!/bin/bash

# Use %p for lowercase am/pm, but need to make sure we get the full "am"/"pm"
current_time=$(date '+%-I:%M')
ampm=$(date '+%p' | tr 'A-Z' 'a-z')  # Convert AM/PM to lowercase
formatted_time="$current_time$ampm"

sketchybar --set "$NAME" label="$formatted_time"
