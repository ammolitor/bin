#!/bin/bash
#===============================================================================
#
#          FILE:  splitconfig.sh
# 
#         USAGE:  ./splitconfig.sh sgsscfg.xxx.xml
# 
#   DESCRIPTION: Splits sgsssfg xml file by (hardcoded) toplevel elements 
# 
#        AUTHOR:   Aaron Molitor 
#       COMPANY:   A123 Systems, Inc.
#       VERSION:  1.0
#       CREATED:  03/ 1/2012  7:54:03 AM CST
#      REVISION:  ---
#===============================================================================

elements=(assets zones pollingschedules datamaps controlzones controlgroups algorithms hvaczones firezones envzones isoconnectors dnpconnectors)

site=`echo $1 | cut -d. -f2`
#index variable to allow ordering of outfiles
i=1

# grab top lines before assets sections
endtop=`grep -n \<${elements[0]} ${1} | cut -d: -f1`
let endtop=$endtop-1
outfile=part.00.$site.xml
sed -n 1,${endtop}p $1 > $outfile

for element in ${elements[@]};
do
	echo -e "Extracting" $element

	# Start of the element to be separated i.e. <asset>
	startline=`grep -n \<${element} ${1} | cut -d: -f1`
	echo  -e "\tStart at line: " $startline
	
	# End of element to be separated i.e. </asset>
	stopline=`grep -n \<\/${element} ${1} | cut -d: -f1`
	echo -e "\tStop at line: " $stopline
	
	# Add Leading zeros to index for parts less than 10
	# define output file name by element name, and site as defined in the source xml file
	if [ "$i" -lt 10 ]
	then
		outfile=part.0$i.$element.$site.xml
	else
		outfile=part.$i.$element.$site.xml
	fi

	echo -e "Into file: " $outfile "\n"
	
	# Sed command to print out lines from startline to stopline inclusive to new file
	sed -n ${startline},${stopline}p $1 > $outfile
	let "i++"
done

tail -1 $1 >> part.11.*
