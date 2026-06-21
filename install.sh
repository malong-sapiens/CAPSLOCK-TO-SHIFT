#!/bin/bash

set -e

echo "Installing CapsLock -> LeftShift..."

sudo install -Dm644 90-capslock-to-shift.hwdb \
/etc/udev/hwdb.d/90-capslock-to-shift.hwdb

sudo systemd-hwdb update

sudo udevadm trigger

echo
echo "Installation complete."
echo "Reboot required."
