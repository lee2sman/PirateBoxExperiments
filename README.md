# ChipPirateBoxExperiments
Experiments with Pirate Box on CHIP OS and Raspberry Pi

Hacky experiments (in-progress!) to turn ChipOS and Raspberry Pi's into minimal piratebox servers with alternative frontend to serve artwork and files, collaborative offline library, etc.

# CHIP

## Install

Installer was coded based on howto [here](https://piratebox.cc/other:chip)
It may need to be run as individual sections instead of a single bash script.
Run from root.

## How to run it

To turn on piratebox
```sudo /etc/init.d/piratebox start```

To turn off piratebox
```sudo /etc/init.d/piratebox stop```

## Keep Chip from going to sleep

```
sudo chmod +x nosleep.sh
./nosleep.sh
```

# Raspberry Pi

Tested on Raspberry Pi B.

## To turn on piratebox 

```
sudo systemctl start minidlna
sudo systemctl enable minidlna
```

## To alter stuff:

```
sudo nano /etc/minidlna.conf
```

* change the file sharing directory
* change the presented URL (default: http://piratebox.lan) in the address bar
* and album artwork?
* vim users should obviously switch out nano above
