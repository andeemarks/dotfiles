# Should you change your keyboard layout some time, delete
# this file and re-run i3-config-wizard(1).
#

# i3 config file (v4)
#
# Please see http://i3wm.org/docs/userguide.html for a complete reference!

set $mod Mod4
set $ws1 "1:Dev"
set $ws2 "2:Web"
set $ws3 "3:Zoom"
set $ws4 "4:Terminal"
assign [class="Firefox"] $ws2
assign [class="Zoom"] $ws3
assign [class="Terminator"] $ws4
assign [class="code"] $ws1

# This font is widely installed, provides lots of unicode glyphs, right-to-left
# text rendering and scalability on retina/hidpi displays (thanks to pango).
font pango:DejaVu Sans Mono 8

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminal
bindsym $mod+Return exec terminator

# kill focused window
bindsym $mod+Shift+q kill

# start dmenu (a program launcher)
# bindsym $mod+d exec dmenu_run
# There also is the (new) i3-dmenu-desktop which only displays applications
# shipping a .desktop file. It is a wrapper around dmenu, so you need that
# installed.
bindsym $mod+d exec --no-startup-id i3-dmenu-desktop

# change focus
bindsym $mod+j focus left
bindsym $mod+k focus down
bindsym $mod+l focus up
bindsym $mod+semicolon focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+j move left
bindsym $mod+Shift+k move down
bindsym $mod+Shift+l move up
bindsym $mod+Shift+semicolon move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+h split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+a focus parent

# focus the child container
#bindsym $mod+d focus child

# switch to workspace
bindsym $mod+1 workspace $ws1
bindsym $mod+2 workspace $ws2
bindsym $mod+3 workspace $ws3
bindsym $mod+4 workspace $ws4
bindsym $mod+5 workspace 5

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace $ws1
bindsym $mod+Shift+2 move container to workspace $ws2
bindsym $mod+Shift+3 move container to workspace $ws3
bindsym $mod+Shift+4 move container to workspace $ws4
bindsym $mod+Shift+5 move container to workspace 5

# reload the configuration file
bindsym $mod+Shift+c reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'Do you really want to exit i3?' -b 'Yes, exit i3' 'i3-msg exit'"

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym j resize shrink width 10 px or 10 ppt
        bindsym k resize grow height 10 px or 10 ppt
        bindsym l resize shrink height 10 px or 10 ppt
        bindsym semicolon resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

bindsym $mod+r mode "resize"

set $Locker i3lock && sleep 1
 
set $mode_system System (l) lock, (e) logout, (r) reboot, (Shift+s) shutdown
mode "$mode_system" {
    bindsym l exec --no-startup-id $Locker, mode "default"
    bindsym e exec --no-startup-id i3-msg exit, mode "default"
    bindsym r exec --no-startup-id systemctl reboot, mode "default"
    bindsym Shift+s exec --no-startup-id systemctl poweroff -i, mode "default"  
 
    # back to normal: Enter or Escape
    bindsym Return mode "default"
    bindsym Escape mode "default"
}
 
bindsym $mod+Pause mode "$mode_system"

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
# bar {
#         position top
#         status_command i3status -c ~/.config/i3status/config-nontime.conf
#         tray_output primary
#         font pango:DejaVu Sans Mono 10
#         separator_symbol ">"
#         binding_mode_indicator yes
#         colors {
#                 background #222222
#                 statusline #ffffff
#                 separator #ffff00

#                 focused_workspace  #4c7899 #285577 #ffffff
#                 active_workspace   #333333 #5f676a #ffffff
#                 inactive_workspace #333333 #222222 #888888
#                 urgent_workspace   #2f343a #900000 #ffffff
#                 binding_mode       #2f343a #900000 #ffffff
#         }
# }

bar {
        position bottom
        status_command i3status -c ~/.config/i3status/config-time.conf
        tray_output primary
        font pango:DejaVu Sans Mono 10
        separator_symbol "|"
        binding_mode_indicator yes
        colors {
                background #222222
                statusline #ffffff
                separator #ffff00

                focused_workspace  #4c7899 #285577 #ffffff
                active_workspace   #333333 #5f676a #ffffff
                inactive_workspace #333333 #222222 #888888
                urgent_workspace   #2f343a #900000 #ffffff
                binding_mode       #2f343a #900000 #ffffff
        }
}

exec terminator
exec firefox
exec code
exec zoom
exec --no-startup-id feh --bg-scale ~/Pictures/TWU\ Desktop\ background\(2\).png 
exec_always --no-startup-id $HOME/.config/polybar/launch.sh

# Media player controls
bindsym XF86AudioPlay exec playerctl play
bindsym XF86AudioPause exec playerctl pause
bindsym XF86AudioNext exec playerctl next
bindsym XF86AudioPrev exec playerctl previous

bindsym XF86AudioRaiseVolume exec amixer -q -c 0 set Master 2Db+
bindsym $mod+F3 exec amixer -q -c 0 set Master 2Db+
bindsym XF86AudioLowerVolume exec amixer -q -c 0 set Master 2Db+
bindsym $mod+F2 exec amixer -q -c 0 set Master 2Db-
bindsym XF86AudioMute exec amixer -q -c 0 set Master toggle

bindsym $mod+F6 exec rhythmbox-client --play-pause
bindsym $mod+F5 exec rhythmbox-client --previous
bindsym $mod+F7 exec rhythmbox-client --next

bindsym $mod+Print exec flameshot gui

