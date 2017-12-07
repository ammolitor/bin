#!/bin/bash
#===============================================================================
#
#          FILE:  divide-pom.xml
# 
#         USAGE:  $0 path/to/pom.xml
# 
#   DESCRIPTION: splits pom xml file by (hardcoded) toplevel elements 
# 
#        AUTHOR:   Aaron Molitor 
#===============================================================================

elements=( modules scm distributionManagement properties dependencies build reporting pluginRepositories repositories profiles )

#index variable to allow ordering of outfiles
i=1

# grab top lines before assets sections
endtop=`grep -n \<${elements[0]} ${1} | cut -d: -f1`
let endtop=$endtop-1
outfile=part.00.xml
sed -n 1,${endtop}p $1 > $outfile

for element in ${elements[@]};
do
	echo -e "Extracting" $element

	# Start of the element to be separated i.e. <asset>
	startline=`grep -n \<${element} ${1} | head -1 | cut -d: -f1`
	echo  -e "\tStart at line: " $startline
	
	# End of element to be separated i.e. </asset>
	stopline=`grep -n \<\/${element} ${1} | head -1 | cut -d: -f1`
	echo -e "\tStop at line: " $stopline
	
	# Add Leading zeros to index for parts less than 10
	if [ "$i" -lt 10 ]
	then
		outfile=part.0$i.$element.xml
	else
		outfile=part.$i.$element.xml
	fi

	echo -e "Into file: " $outfile "\n"
	
	# Sed command to print out lines from startline to stopline inclusive to new file
	sed -n ${startline},${stopline}p $1 > $outfile
	let "i++"
done

tail -1 $1 >> part.$i.xml
