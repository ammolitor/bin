#!/bin/bash
#===============================================================================
#
#          FILE:  erase-mbr.sh
# 
#         USAGE:  ./erase-mbr.sh  DEVICENAME
#===============================================================================

DEVICENAME=$1

dd if=/dev/zero of=${DEVICENAME} bs=512 count=1
