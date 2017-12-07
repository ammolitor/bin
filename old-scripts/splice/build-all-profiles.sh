#!/bin/bash

basedir="$(pwd)"
echo ${basedir}

profiles=( $(awk '/id/ && (/cdh/ || /hdp/ || /mapr/){gsub(/<[^>]*>/,""); print $0};' pom.xml) )

for profile in ${profiles[@]}; do
	outfile="${basedir}/${profile}.build.out"
	cd ${profile}
	echo "
	################################################################################
	#    Building ${profile}, build output is being sent to $( basename ${outfile} )
	################################################################################
	"
	# mvn -B clean verify -PITs -Dexcluded.categories= > ${outfile} 2>&1
	mvn -B clean verify -DskipTests 
	cd ${basedir}
done   
