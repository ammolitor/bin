#!/bin/bash

slaves=( jm $(echo js{01..28}) )

for slave in ${slaves[@]}; do
	echo ${slave}
	ssh ${slave} "sudo echo \"127.0.0.1    localhost\" >> /etc/hosts"
	ssh ${slave} cat /etc/hosts
	#ssh ${slave} "sudo rsync -av -e ssh root@jm:/opt/. /opt/"
	# ssh ${slave} sudo mv stop-splice.sh /opt/
	# ssh ${slave} md5sum /opt/stop-splice.sh
	# ssh ${slave} sudo /opt/stop-splice.sh
done


