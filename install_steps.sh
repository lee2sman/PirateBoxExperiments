# INFO on installing PirateBox on a Chip computer running ChipOS / Debian
#
# Info comes from ChiPirate-BOX: the chipest and cheapest Pirate-BOX ever
# https://piratebox.cc/other:chip


# Install some extra debian packets:
sudo apt-get update
sudo apt-get install perl lighttpd dnsmasq hostapd python php5-cgi zip avahi-daemon

# Prevent daemons from autoloading
sudo systemctl stop lighttpd
sudo systemctl disable lighttpd
sudo systemctl stop dnsmasq
sudo systemctl disable dnsmasq
sudo systemctl stop hostapd
sudo systemctl disable hostapd

# Get PirateBox code
wget  http://downloads.piratebox.de/piratebox-ws_current.tar.gz
tar xf piratebox-ws_current.tar.gz
cd piratebox
sudo cp -rv piratebox /opt
sudo ln -s /opt/piratebox/init.d/piratebox /etc/init.d/

# Delay startup by 30 seconds
sudo sh -c 'echo "sleep 30" >> /opt/piratebox/bin/hooks/hook_piratebox_start.sh'
sudo sed -i -e 's|^# echo|echo|'  /opt/piratebox/bin/hooks/hook_piratebox_start.sh

# Finalize install
sudo /opt/piratebox/bin/install_piratebox.sh /opt/piratebox/conf/piratebox.conf part2
sudo /opt/piratebox/bin/install_piratebox.sh /opt/piratebox/conf/piratebox.conf imageboard

# Initialize board
sudo /opt/piratebox/bin/board-autoconf.sh

# Automatically enable USB stick for storage
sudo /opt/piratebox/rpi/bin/usb_share.sh
