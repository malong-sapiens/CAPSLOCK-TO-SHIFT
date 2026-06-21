#!/bin/bash

set -e

echo "Removing CapsLock -> LeftShift..."

sudo rm -f /etc/udev/hwdb.d/90-capslock-to-shift.hwdb

sudo systemd-hwdb update

sudo udevadm trigger

echo
echo "Removed."
echo "Reboot required."
