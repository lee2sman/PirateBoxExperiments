# ChipPirateBoxExperiments
Experiments with Pirate Box on CHIP OS


Hacky experiments (in-progress!) to turn ChipOS into a minimal piratebox server with alternative frontend to serve artwork and files, collaborative offline library, etc.

# Install
Installer was coded based on howto [here](https://piratebox.cc/other:chip)
It may need to be run as individual sections instead of a single bash script.
Run from root.

# How to run it
To turn on piratebox
```sudo /etc/init.d/piratebox start```

To turn off piratebox
```sudo /etc/init.d/piratebox stop```

# Keep Chip from going to sleep

```
sudo chmod +x nosleep.sh
./nosleep.sh
```


