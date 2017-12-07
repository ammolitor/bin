#!/bin/bash

for dir in $( find $(pwd) -mindepth 1 -maxdepth 1 -type d) ; do
	echo -e "\n\n############################## CLEANING "$dir" ##############################\n"
	cd $dir
	if [ "${1}" == "-y" ]
	then
		git clean -fdx
	else
		git clean -ndx | less
		echo "are you sure [y/N]:"
		read SURE
		if [ "${SURE}" == "Y" -o "${SURE}" == "y" ]
		then
			git clean -fdx
		else 
			echo "#### doing nothing, carry on! ####"
		fi
	fi
	cd ..
done

