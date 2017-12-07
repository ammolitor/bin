#!/bin/bash

# notes from connecting pluggable usb serial adapter to serial console on a device

kextstat | grep prolific
ioreg -c IOSerialBSDClient | grep usb

# screen /dev/cu.usbserial


