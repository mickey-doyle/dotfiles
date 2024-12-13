#!/bin/bash

#!/bin/bash

### Color Definitions
CLEAR="0x00000000"

BLUE="0xff66b2ff"
EBLUE="0x8066b2ff"
FBLUE="0x4066b2ff"
TBLUE="0x2066b2ff"

GREEN="0xff66ffb2"
EGREEN="0x8066ffb2"
FGREEN="0x4066ffb2"
TGREEN="0x2066ffb2"

YELLOW="0xfffdff66"
EYELLOW="0x80fdff66"
FYELLOW="0x40fdff66"
TYELLOW="0x20fdff66"

CYAN="0xff66ffff"
ECYAN="0x8066ffff"
FCYAN="0x4066ffff"
TCYAN="0x2066ffff"

WHITE="0xffc3d6d2"
EWHITE="0x80c3d6d2"
FWHITE="0x40c3d6d2"
TWHITE="0x20c3d6d2"

NAVY="0xff270EBC"
ENAVY="0x80270EBC"
FNAVY="0x40270EBC"
TNAVY="0x20270EBC"

PINK="0xfff73e81"
EPINK="0x80f73e81"
FPINK="0x40f73e81"
TPINK="0x20f73e81"

GOLD="0xffffb71b"
EGOLD="0x80ffb71b"
FGOLD="0x40ffb71b"
TGOLD="0x20ffb71b"

CHAR="0xff181C24"
ECHAR="0x8018C24"
FCHAR="0x40181C24"
TCHAR="0x20181C24"

PURP="0xff7819FF"
EPURP="0x807819FF"
FPURP="0x407819FF"
TPURP="0x207819FF"

export ROON="0xff730000"
export EROON="0x80730000"
export FROON="0x40730000"
export TROON="0x20730000"

update_space() {
  if [ "$SELECTED" = "true" ]; then
    sketchybar --set $NAME icon.color=$GOLD icon.font="ZedMono Nerd Font Propo:ExtraBold:20.0" background.color=$CHAR background.border_color=$GOLD background.border_width=1 background.shadow.color=$GOLD
  else
    sketchybar --set $NAME icon.color=$EWHITE icon.font="ZedMono Nerd Font Propo:Light:20.0" background.color=$CHAR background.border_color=$FWHITE background.border_width=1 background.shadow.color=$FWHITE
  fi
}

update_space
