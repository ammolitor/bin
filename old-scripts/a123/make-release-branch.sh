#!/bin/bash
#===============================================================================
#
#          FILE:  make-tags.sh
# 
#         USAGE:  ./make-tags.sh {sgss|web|zoneui} {tags|branches} 2.6.0
# 
#   DESCRIPTION:  move particular tag or branch to release branch to be build by CC
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
	Usage: $0 {sgss|web|zoneui} {tags|branches} {v2.X.X|2.7.0}\n"
	exit 1
fi
typ=$2
ver=$3

case "$1" in 
	sgss)
		echo "svn del https://us-dc1-svn1/svn/sgss/branches/release -m\"creating release from $typ/$ver\" &&"\
		"svn cp https://us-dc1-svn1/svn/sgss/$typ/$ver https://us-dc1-svn1/svn/sgss/branches/release -m\"creating release from $typ/$ver\""
		;;
	web)
		echo "svn del https://us-dc1-svn1/svn/sgss/web/branches/release -m\"creating release from $typ/$ver\" &&"\
		"svn cp https://us-dc1-svn1/svn/sgss/web/$typ/$ver https://us-dc1-svn1/svn/sgss/web/branches/release -m\"creating release from $typ/$ver\""
		;;
	zoneui)
		echo "svn del https://us-dc1-svn1/svn/sgss/zoneui/branches/release -m\"creating release from $typ/$ver\" &&"\
		"svn cp https://us-dc1-svn1/svn/sgss/zoneui/$typ/$ver https://us-dc1-svn1/svn/sgss/zoneui/branches/release -m\"creating release from $typ/$ver\""
		;;
	*)
		echo -e  "\n\n\tUsage: $0 {sgss|web|zoneui} {tags|branches} {v2.X.X|2.7.0} \n\n"
		exit 1
esac
