#!/bin/bash
#===============================================================================
#
#          FILE:  make-tags.sh
# 
#         USAGE:  ./make-tags.sh {sgss|web|zoneui} {tags|branches} 2.6.0 9592
# 
#   DESCRIPTION:  create subversion tag at revision number
# 
#        AUTHOR:   Aaron Molitor
#       VERSION:  1.0
#       CREATED:  2013-07-15 18:35:41 CDT
#      REVISION:  ---
#===============================================================================

if [ "$2" == tags ] || [ "$2" == branches ];
then
	echo " "
else
	echo -e "\n\tmust specify either "branches" or "tags"
	Usage: $0 {sgss|web|zoneui} {tags|branches} {v2.X.X|2.6.0} REVISION # (9592)\n"
	exit 1
fi
typ=$2
ver=$3
rev=$4

case "$1" in 
	sgss)
		echo "svn cp -r $rev https://us-dc1-svn1/svn/sgss/trunk https://us-dc1-svn1/svn/sgss/$typ/$ver"
		;;
	web)
		echo "svn cp -r $rev https://us-dc1-svn1/svn/sgss/web/trunk https://us-dc1-svn1/svn/sgss/web/$typ/$ver"
		;;
	zoneui)
		echo "svn cp -r $rev https://us-dc1-svn1/svn/sgss/zoneui/trunk https://us-dc1-svn1/svn/sgss/zoneui/$typ/$ver"
		;;
	*)
		echo -e  "\n\n\tUsage: $0 {sgss|web|zoneui} {tags|branches} {v2.X.X|2.6.0} REVISION # (9592)\n\n"
		exit 1
esac
