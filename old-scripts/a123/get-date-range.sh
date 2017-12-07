#!/bin/bash

TZ=/usr/share/zoneinfo/EST5EDT
for i in $@
do
	echo -e $i "\n Starts at: "
	head -1 $i | awk -F"." '/^[0-9]/{ datestr=sprintf("%s", strftime("%F %T %Z", $1)); print datestr}'
	echo " Ends at: "
	tail -1 $i | awk -F"." '/^[0-9]/{ datestr=sprintf("%s", strftime("%F %T %Z", $1)); print datestr}'
done

