#!/bin/bash

# Add space items to sketchybar
for i in {1..10}; do
  sketchybar --add space space.$i left \
             --set space.$i \
                    space=$i \
                    icon=$i \
                    icon.padding_left=6 \
                    icon.padding_right=1 \
                    background.padding_left=15\
                    background.padding_right=15 \
                    icon.color=0xffffffff \
                    background.color=0x44ffffff \
                    background.corner_radius=20 \
                    background.height=26                background.shadow.drawing=on \
                    background.shadow.distance=3 \               background.shadow.angle=180 \
                    background.shadow.color=0xff181C24 \
                    script="/Users/mick/.config/sketchybar/plugins/space_update.sh"
done
