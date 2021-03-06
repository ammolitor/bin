#!/bin/bash

##################################################################################
# Stop Zookeeper and the Splice HBase servers
# See usage() below.
##################################################################################

# Check if server running. If not, no need to proceed.
splice_pids=$(ps -ef | awk '/SpliceTestPlatform|SpliceSinglePlatform/ && !/awk/ {print $2}')
zoo_pids=$(ps -ef | awk '/ZooKeeperServerMain/ && !/awk/ {print $2}')
if [[ -z ${splice_pids[0]} && -z ${zoo_pids[0]} ]]; then
    echo "Splice server is not running."
    exit 0
else
	# otherwise kill it nicely
	SIG=15
	[[ -n ${splice_pids[0]} ]] && echo "Found Splice. Stopping it." && for pid in ${splice_pids}; do kill -${SIG} $(echo ${pid}); done
	[[ -n ${zoo_pids[0]} ]] && echo "Found ZooKeeper. Stopping it." && for pid in ${zoo_pids}; do kill -${SIG} $(echo ${pid}); done
fi
sleep 20 # give them time to die

# Check for stragglers and kill 'em dead
SIG=9
splice_pids9=$(ps -ef | awk '/SpliceTestPlatform|SpliceSinglePlatform/ && !/awk/ {print $2}')
zoo_pids9=$(ps -ef | awk '/ZooKeeperServerMain/ && !/awk/ {print $2}')
[[ -n ${splice_pids9[0]} ]] && echo "Found Splice straggler. Stopping it." && for pid in ${splice_pids9}; do kill -${SIG} $(echo ${pid}); done
[[ -n ${zoo_pids9[0]} ]] && echo "Found ZooKeeper straggler. Stopping it." && for pid in ${zoo_pids9}; do kill -${SIG} $(echo ${pid}); done
