#!/bin/bash
#===============================================================================
#
#          FILE:  build-all-targets.sh
# 
#         USAGE:  ./build-all-targets.sh 
# 
#   DESCRIPTION:  
# 
#        AUTHOR:   (), 
#===============================================================================


PROFILES=( $(grep -A4 "<profile>" pom.xml | awk  '/id/{ps=$1; gsub(/<[^>]*>/,"", ps); print ps}') )

for profile in ${PROFILES[@]}
do
	if [ ${profile} == "downloadSources" ]
	then
		break
	elif [ ${profile} == "cloudera-cdh4.3.0" ]
	then
		echo "################################################################################"
		echo "#                        building ${profile}"
		echo "################################################################################"
		if [ "$1" == "-f" ]
		then
			mvn -B clean install > ~/temp/build-logs/${profile}.log 2>&1
		else
			mvn -B clean install
		fi
	else
		echo "################################################################################"
		echo "#                        building ${profile}"
		echo "################################################################################"
		if [ "$1" == "-f" ]
		then
			mvn -B clean install -Dhbase.profile=${profile} > ~/temp/build-logs/${profile}.log 2>&1
		else
			mvn -B clean install -Dhbase.profile=${profile}
		fi
	fi
done
