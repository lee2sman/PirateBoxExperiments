# PirateBoxExperiments
Experiments with Pirate Box on CHIP OS and Raspberry Pi

Hacky experiments (in-progress!) to turn ChipOS and Raspberry Pi's into minimal piratebox servers with alternative frontend to serve artwork and files, collaborative offline library, etc.

This isn't a working distro or package so much as starter scripts, documentation and experiments that can be used in projects.

# CHIP

## Install

Installer was coded based on howto [here](https://piratebox.cc/other:chip)
It may need to be run as individual sections instead of a single bash script.
Run from root.

## How to run it

To turn on ChipPiratebox
```sudo /etc/init.d/piratebox start```

To turn off ChipPiratebox
```sudo /etc/init.d/piratebox stop```

## Keep Chip from going to sleep

```
sudo chmod +x nosleep.sh
./nosleep.sh
```

# Raspberry Pi

Tested on Raspberry Pi B. With piratebox disk image greater than version 1.1 (i think) it is not necessary to actually install anything after starting this thing up. At minimum, one should change the password. If you want imageboard/discussionboard, you'll need to run other steps, see [setupRaspPiImgChatBoards.md].

## To turn on Pi piratebox 

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
