#!/bin/bash
#===============================================================================
#
#          FILE:  clean-perf-data.sh
# 
#         USAGE:  ./clean-perf-data.sh  raw-data-file
# 
#   DESCRIPTION: cleans up data collected with date + top script
# 
#       CREATED:  11/15/2012 11:11:43 AM CST
#      REVISION:  ---
#===============================================================================

# move date to the beginning of each subsequent line
# redirect to new file and then move new over original
awk ' /^[A-Z]/{ date=sprintf("%s-%s-%s", $2, $3, $4) }
!/^[A-Z]/{ gsub(/ +/, "\t") ; print date $0 }' $1 > $1.new
mv $1.new $1

# divide-files
# grabs each unique command and greps it out of base file and outputs that data 
# to a new file
mkdir output
for cmd in `awk '{print $13}' $1  | sort -u`
do
	outfile=$cmd.out
	# blindly make file empty regardless if it exists
	cat /dev/null > output/$outfile
	# echo header line into new (or enmpty) file
	echo -e "DATE\tPID\tUSER\tPR\tNI\tVIRT\tRES\tSHR\tS\t%CPU\t%MEM\tTIME+\tCOMMAND" >> output/$outfile
	# grep for cmd in file and output it to file
	grep -w $cmd $1 >> output/$outfile
	awk -F "\t" '{print $1 "\t" $10 "\t" $11}' output/$outfile >> output/$outfile.lite
done
