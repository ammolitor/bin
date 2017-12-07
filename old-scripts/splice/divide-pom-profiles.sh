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


#index variable to allow ordering of outfiles
SCOUNT=$(grep -c \<profile\> ${1})
ECOUNT=$(grep -c \<\/profile\> ${1})

if [ "${SCOUNT}" -ne "${ECOUNT}" ]
then
	echo "profile start and end tag counts do not match, bad input file"
	echo "EXITING!"
	exit 1
else
	COUNT=${SCOUNT}
fi

STARTS=( $(grep -n \<profile\> ${1} | cut -d: -f1) )
ENDS=( $(grep -n \<\/profile\> ${1} | cut -d: -f1) )


for (( p=0; p<${COUNT}; p++ ))
do
	pstart=${STARTS[${p}]}
	pend=${ENDS[${p}]}

	sed -n ${pstart},${pend}p $1 > profile.$p.xml
done
