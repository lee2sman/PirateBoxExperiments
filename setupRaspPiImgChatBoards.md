# How to set up Raspberry Pi PirateBox without ssh to enable imageboard/discussionboard and media server

* These steps are intended to be followed after creating a Piratebox disk image and starting it up in the Raspberry Pi.

## change password of alarm user

```
> passwd
```

## enable fake-timeservice

### set date and time

```
> sudo timedatectl set-ntp false
> sudo date -s "20170904 1603"
> cd /opt/piratebox && sudo ./bin/timesave.sh ./conf/piratebox.conf install
```
### enable on startup

```
> sudo systemctl enable timesave
```

### enable the imageboard and discussionboard

```
> sudo /opt/piratebox/bin/board-autoconf.sh
```

### enable usb thumb drive share OR extend SDcard
USB: ```> sudo /opt/piratebox/rpi/bin/usb_share.sh```
SDCard: ```> sudo /opt/piratebox/rpi/bin/sdcard_share.sh```

### enable UPnP media server

```
> sudo cp /etc/minidlna.conf /etc/minidlna.conf.bkp
> sudo cp /opt/piratebox/src/linux.example.minidlna.conf /etc/minidlna.conf
> sudo systemctl start minidlna
> sudo systemctl enable minidlna
```

### enable realtimeclock timekeeping
```
> sudo systemctl enable rpi_hwclock
```

## TO START:

```
sudo systemctl start minidlna
sudo systemctl enable minidlna
```

## To alter stuff:

```
sudo nano /etc/minidlna.conf
```

* You can change the file sharing directory
* the presented URL as well (default: http://piratebox.lan)
* and album art names??
