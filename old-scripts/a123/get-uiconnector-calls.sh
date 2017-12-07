#!/bin/bash

projects=(~/svn/sgss/web/trunk/ ~/svn/sgss/zoneui/trunk/)

for proj in ${projects[@]}
do
	grep -r cgi-bin/uiconnector? $proj | \
		grep -v // | \
		awk -F "/cgi-bin/" '{ print $2 }' | \
		sed 's/^[ \t]*//;s/[ \t]*$//;s/ //g' | \
		sed 's/[";)(}{,]//g' | \
		sed -e s/\'//g | \
		sed 's/[?\&]/ -/g' | \
		sed 's/[=+]/ /g'
done

# commands in order do:
# grep all instances of cgi-bin/uiconnector?
# remove commented lines (//)
# only show what is after /cgi-bin/
# remove all ";)(}{,
# remove all '
# sub ? and & with " -"
# sub = and + with " "
