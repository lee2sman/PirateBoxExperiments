# PirateBoxExperiments

Experiments with Pirate Box on CHIP OS and Raspberry Pi

[PirateBox](http://piratebox.cc) is an open-source platform for creating an offline anonymous filesharing and communication system. 

PirateBoxExperiments builds off this platform so that you can create a private WiFi network to serve any content in the form of a website. Build a web project, present artwork, or distribute digital zines.

Turn ChipOS and Raspberry Pi or other Linux distros into a minimal piratebox server with your own alternative frontend. This isn't a working distro. It's a collection of starter scripts, documentation and experiments that can be used in projects. 

# CHIP

## Install

Installer was coded based on howto [Chip](https://piratebox.cc/other:chip) documentation. Steps should be followed incrementally and run from root.

## Quickstart

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

Tested on Raspberry Pi B. With piratebox disk image greater than version 1.1 it should not necessary to actually install anything after startup. At minimum, change the password. If you want imageboard/discussionboard, you'll need to follow [this](setupRaspPiImgChatBoards.md) additional tutorial.

## To turn on Raspberry Pi piratebox 

```
sudo systemctl start minidlna
sudo systemctl enable minidlna
```

## To alter 

```
sudo nano /etc/minidlna.conf
```

* change the file sharing directory
* change the presented URL (default: http://piratebox.lan) in the address bar
* and album artwork?
* vim users should switch out nano above
