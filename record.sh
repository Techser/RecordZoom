#! /bin/sh

# Open zoom in subshell
zoom &

# Wait for zoom to actually open, maybe find a better way to do this
sleep 3

# Focus the window
windowId=$(xdotool search Zoom | head -n 1)

xdo activate $windowId

# Focus Join Button, press tab 10 times
# Could be a loop but since we know it's 10 times this is faster
xdotool key Tab Tab Tab Tab Tab Tab Tab Tab Tab Tab

# Press Space, this presses the Join button.
# Ideally we would press Enter here because that makes sense
# but for some reason the Enter keycodes aren't working and
# I don't want to spend time on that.
xdotool key space

# Wait for popup
sleep 1

# Press Tab twice to focus meeting id field.
xdotool key Tab Tab

# Enter room id passed in as first argument
xdotool type $1

# Select Join button
xdotool key Tab Tab Tab Tab Tab

# Press Join button
xdotool key space

# Wait for popup
sleep 1

# Enter password passed in as second argument
xdotool type $2

# Select Join button
xdotool key Tab

# Press Join button
xdotool key space

# We have now joined the zoom call.
# All that remains to do is record the screen.
# https://trac.ffmpeg.org/wiki/Capture/Desktop
# The above link shows how to do that with ffmpeg.
