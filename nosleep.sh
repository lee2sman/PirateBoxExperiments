# Forces ChipOS to stay on (no sleep)
# Particularly useful when running Piratebox to keep from turning off when screen sleeps
# Don't forget to sudo chmod +x nosleep.sh
# to run at startup, add this to end of .bashrc
# path/to/nosleep.sh &
# might need to force terminal at start instead of gui

export XAUTHORITY=/home/chip/.Xauthority
export DISPLAY=:0
xset s off
xset -dpms
xset s noblank
