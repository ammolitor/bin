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

# find lines that start with (Mon, Tue, Wed, Thu, Fri, Sat, Sun) and remove "Mon "
#sed -i 's/^[MTWFS][ouehra][neduitn] //' $1
# remove " UTC 2012"
#sed -i 's/ UTC 2012//' $1
# remove leading and trailing whitespace
sed -i 's/^[ \t]*//;s/[ \t]*$//' $1
# convert whitespace to tabs
sed -i 's/ \+/\t/g' $1
# fix date string so it is not tab delimited
# on lines that start with a capital letter replace <tab> with <space>
sed -i '/^[A-Z]/s/\t/ /g' $1
# on lines that start with a digit, add a <tab> to the beginning
sed -i 's/^[0-9]/\t&/' $1

# move date to the beginning of each subsequent line
# redirect to new file and then move new over original
awk ' /^[A-Z]/{ date=$0 } 
!/^[A-Z]/{ print date $0 }' $1 > $1.new
mv $1.new $1

# divide-files
# grabs each unique command and greps it out of base file and outputs that data 
# to a new file
mkdir output
for cmd in `awk '{print $15}' $1  | sort -u`
do
	
	outfile=data-$cmd.out
	# blindly make file empty regardless if it exists
	cat /dev/null > output/$outfile
	# echo header line into new (or enmpty) file
	echo -e "DATE\tPID\tUSER\tPR\tNI\tVIRT\tRES\tSHR\tS\t%CPU\t%MEM\tTIME+\tCOMMAND" >> output/$outfile
	# grep for cmd in file and output it to file
	grep $cmd $1 >> output/$outfile
	awk -F "\t" '{print $1 "\t" $10 "\t" $11}' output/$outfile >> output/$outfile.lite
done
