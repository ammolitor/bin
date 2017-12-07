#!/bin/bash
#===============================================================================
#          FILE:  getCallTimes.sh
# 
#         USAGE:  ./getCallTimes.sh 
# 
#   DESCRIPTION:  runs from "card" directory, gets call times for each drug and 
#                 places them into a file by barcode
#===============================================================================

files=( `find . -name params.log` )
mkdir call_times

for f in "${files[@]}"
do
	fn=call_times/`echo ${f} | cut -d"/" -f2`.txt
	echo ${f} | cut -d"/" -f2 > $fn
	echo -e '\n\n' >> $fn
	grep -B1 "Call time" $f >> $fn
	sed -i '/--/d' $fn
	sed -i 's/Drug: //' $fn
	sed -i 's/Call time: /\t/' $fn
	sed -i '$!N;s/\n/ /' $fn
done
