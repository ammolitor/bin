#!/bin/bash
#===============================================================================
#
#          FILE:  run-uiconn-test.sh
# 
#         USAGE:  ./run-uiconn-test.sh 
# 
#   DESCRIPTION:  
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:   (), 
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  10/ 8/2012 11:53:15 AM CDT
#      REVISION:  ---
#===============================================================================

OLDIFS=$IFS
IFS=$'\n'

commandlist=( `~/bin/get-uiconnector-calls.sh | sort -u` )

# print list of Pakcages about to be uninstalled
for i in ${commandlist[@]}
do
	echo -e $i
	ssh devzcc1 /opt/sgss/bin/$i
	echo -e "\n\n"
done
IFS=$OLDIFS




