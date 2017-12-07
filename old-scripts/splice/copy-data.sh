#!/bin/bash

function copy_files {
	s3source=$1
	dest=$2

	folders=$(for folder in $(aws s3 ls s3://${s3source} --recursive | grep -v -E "(Bucket: |Prefix: |LastWriteTime|^$|--)" | awk '{print $4}' | grep \/$); do echo ${folder}; done)
	for folder in ${folders[@]}; do
		sudo -su hdfs hadoop fs -mkdir -p /${folder}
	done

	files=$(for file in $(aws s3 ls s3://${s3source} --recursive | grep -v -E "(Bucket: |Prefix: |LastWriteTime|^$|--|\/$)" | awk '{print $4}'); do echo ${file}; done)
	for file in ${files[@]}; do
		sudo -su hdfs hadoop distcp -i s3n://${s3source}/${file} hdfs:///${dest}/${file}
	done
}

function copy_folder_overwrite {
	s3source=$1
	dest=$2

	sudo -su hdfs hadoop fs -mkdir -p ${dest}
	sudo -su hdfs hadoop distcp -i -overwrite -log /tmp/amm$(date +%s) s3n://${s3source}/  hdfs:///${dest}
}

function copy_folder_update {
	s3source=$1
	dest=$2

	sudo -su hdfs hadoop fs -mkdir -p ${dest}
	sudo -su hdfs hadoop distcp -i -overwrite -log /tmp/amm$(date +%s) s3n://${s3source}/  hdfs:///${dest}
}
