# Should you change your keyboard layout some time, delete
# this file and re-run i3-config-wizard(1).
#

# i3 config file (v4)
#
# Please see http://i3wm.org/docs/userguide.html for a complete reference!

set $mod Mod4
set $ws1 "1:Work"
set $ws2 "2:Social"
set $ws3 "3:Dev"
set $ws4 "4:Music"
set $ws5 "5:Terminal"
set $ws6 "6:Shortcuts"

gaps inner 10px
smart_gaps on

# This font is widely installed, provides lots of unicode glyphs, right-to-left
# text rendering and scalability on retina/hidpi displays (thanks to pango).
font pango:DejaVu Sans Mono 8

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

default_orientation vertical

# client.focused          #4c7899 #285577 #ffffff #2e9ef4   #285577
default_border normal
hide_edge_borders none


include config.i3.rofi
include config.i3.keybindings
include config.i3.workspaces
include config.i3.resize
include config.i3.statusbars
include config.i3.startupapps
include config.i3.mediacontrols
