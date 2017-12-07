#!/bin/bash
# to make a dir for each table
# for table in $(for file in $(find . -name \*.dat | sort); do  fname=$(basename ${file}); echo ${fname/_[0-9]*.dat/}; done | sort -u ); do mkdir -p ${table}; find . -type f -name ${table}\*.dat -exec mv '{}' ${table} \; ;done

rootdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
datadirs=( $(find ${rootdir} -mindepth 1 -maxdepth 1 -type d | sort) )

for datadir in ${datadirs[@]}; do
	echo "#### data dir is: ${datadir}"
	cd ${datadir}
	files=( $(find . -mindepth 1 -maxdepth 1 -type f -name  \*.dat | sort) )
	echo "#### files[0] is: ${files[0]}"
	newfile=${files[0]/_[0-9]*.dat/.dat}
	echo "#### newfile is: ${newfile}"
	for file in ${files[@]}; do
		cat ${file} >> ${newfile}
	done
	cd ${rootdir}
	echo
done

# remove original files
# find . -type f -name \*_[0-9]\* -exec rm '{}' \;
