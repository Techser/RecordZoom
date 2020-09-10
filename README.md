# Description
Records a given Zoom call. Pass the room id as the first argument and the room password as the second.

# Dependencies
+ [xdo](https://github.com/baskerville/xdo)
+ [xdotool](https://www.semicomplete.com/projects/xdotool/)
+ [ffmpeg](https://ffmpeg.org/)
+ [zoom](https://zoom.us/download?os=linux)

# TODO
+ Add recording mechanism using ffmpeg to end of script.
+ Find better way of detecting when windows are ready to be interacted with.
+ Add window manager specific logic for maximizing window
+ Add easy way to deal with window manager specific logic
+ Possibly add logic for dealing with breakout rooms, unexpected disconnects, etc.
