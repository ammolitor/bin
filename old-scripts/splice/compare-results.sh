#!/bin/bash

for file in $(find . -name \*.diff | sort -h); do
	fn=${file//.diff/}
	# fn=$(echo ${file} | sed 's/.diff//')
	mn=${file//.1.diff/}
	# mn=$(echo ${file} | sed 's/.1.diff//')
	vim -d ../master/${mn}.mas ${fn}.splice.out
done
