#!/bin/bash
#===============================================================================
#
#          FILE:  cleanConfig.sh
# 
#         USAGE:  ./cleanConfig.sh sgsscfg.xxx.xml
# 
#   DESCRIPTION:  clean whitespace and blank lines from sgsscfg files
# 
#        AUTHOR:   Aaron Molitor 
#       COMPANY:   A123 Systems, Inc.
#       VERSION:  1.0
#       CREATED:  03/ 1/2012  1:11:51 PM CST
#      REVISION:  ---
#===============================================================================

# remove blank lines
sed -i '/^$/d' $1

# remove leading and trailing whitespace
sed -i 's/^[ \t]*//;s/[ \t]*$//' $1
