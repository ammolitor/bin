#!/bin/bash
# stolen from rmon stuff
# get date and time at seconds edge
# and set date (via ssh) on $1

d2=`date -u`
d1=$d2
while [ "$d1" = "$d2" ]
do
	d2=`date -u`
done
date=`date -u +%m%d%H%M%Y.%S`
ssh $1 date -u $date
