xrandr --newmode "asd" 172.80  1920 2040 2248 2576  1080 1081 1084 1118  -HSync +Vsync
xrandr --addmode Virtual1 "asd"
xrandr --output Virtual1 --mode "asd"

feh --bg-scale ~/configs/bg.jpg

picom --experimental-backends --config	~/configs/picom.conf &

exec dwm
