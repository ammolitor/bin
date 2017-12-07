#!/bin/bash
if [ $# -ne 1 ] 
then
	echo -e "Usage: $0 <sitename>\n"
	echo -e "select from the following sitenames:\n"
	/bin/ls /opt/sgss/sgsscfg.*.xml | cut -d. -f2
	exit 0
fi

# create sgsscfg.xml link
cd /opt/sgss/
ln -s sgsscfg.$1.xml sgsscfg.xml

# create the conndata.ent link
ln -s conndata.$1.ent conndata.ent
