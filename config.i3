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
# bindsym $mod+d exec --no-startup-id i3-dmenu-desktop
bindsym $mod+d exec --no-startup-id rofi -show drun -run-command "i3-msg exec '{cmd}'" -show-icons -theme arthur

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

set $feh exec --no-startup-id feh --bg-scale

# switch to workspace
bindsym $mod+1 workspace $ws1
bindsym $mod+2 workspace $ws2
bindsym $mod+3 workspace $ws3
bindsym $mod+4 workspace $ws4
bindsym $mod+5 workspace $ws5
bindsym $mod+6 workspace $ws6 ; $feh ~/Pictures/i3-shortcuts.jpg

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace $ws1
bindsym $mod+Shift+2 move container to workspace $ws2
bindsym $mod+Shift+3 move container to workspace $ws3
bindsym $mod+Shift+4 move container to workspace $ws4
bindsym $mod+Shift+5 move container to workspace $ws5
bindsym $mod+Shift+6 move container to workspace $ws6

# Moving workspaces between screens
bindsym $mod+p move workspace to output right

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

# Start bumblebee-status to display a workspace bar (plus the system information i3status
# finds out, if available)
bar {
        position top
        font pango:DejaVu Sans Mono 14
        tray_output primary
        status_command bumblebee-status \
        -m spotify datetime \
        -p datetime.format="%a, %b %d %H:%M" \
        -t iceberg-rainbow
}

bar {
        position bottom
        tray_output none
        font pango:DejaVu Sans Mono 14
        status_command bumblebee-status \
        -m disk:root disk:var disk:home kernel shell \
        -p disk.path=/ home.path=/home var.path=/var \
        -p shell.command='lsb_release -ds' \
        -p disk.format="{path} {percent:05.02f}% used" \
        -t iceberg-rainbow
}

# client.focused          #4c7899 #285577 #ffffff #2e9ef4   #285577
default_border normal
hide_edge_borders none
# smart_borders on

exec terminator
exec firefox
assign [class="Firefox"] $ws2
assign [class="Chromium"] $ws2
exec code
assign [class="code"] $ws3
exec zoom
exec spotify
assign [class="^Spotify*"] $ws4
exec xcompmgr -c -l0 -t0 -r0 -o.00
exec xsetroot -solid "#000000"
exec_always --no-startup-id $HOME/.config/polybar/launch.sh
exec i3-layouts

set $i3l 2columns to workspace $ws1
set $i3l 2columns to workspace $ws2
set $i3l 2columns to workspace $ws3
set $i3l 2columns to workspace $ws4
set $i3l 2columns to workspace $ws5

# Media player controls
bindsym XF86AudioPlay exec playerctl play
bindsym XF86AudioPause exec playerctl pause
bindsym XF86AudioNext exec playerctl next
bindsym XF86AudioPrev exec playerctl previous

bindsym XF86AudioRaiseVolume exec amixer -q -c 0 set Master 2Db+
bindsym XF86AudioLowerVolume exec amixer -q -c 0 set Master 2Db+
bindsym XF86AudioMute exec amixer -q -c 0 set Master toggle
bindsym $mod+F3 exec amixer -q -c 0 set Master 2Db+
bindsym $mod+F2 exec amixer -q -c 0 set Master 2Db-

# bindsym $mod+F3 exec amixer -q -c 3 set Headphone 2Db+
# bindsym $mod+F2 exec amixer -q -c 3 set Headphone 2Db-
# bindsym $mod+F6 exec rhythmbox-client --play-pause
# bindsym $mod+F5 exec rhythmbox-client --previous
# bindsym $mod+F7 exec rhythmbox-client --next

bindsym $mod+Print exec flameshot gui

