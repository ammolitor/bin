#!/bin/bash

# cloudera manager vars
CMHOST="srv01"
CMPORT="7180"
CMUSER="admin"
CMPASS="admin"
CMAPIV="v5"
CMURL="http://${CMHOST}:${CMPORT}/api/${CMAPIV}"

# CM hostid -> hostname map
declare -A CMIH

# hostId - map to a hostname, role, etc.
HOSTIDS=$(curl -s -u ${CMUSER}:${CMPASS} ${CMURL}/hosts | jq -r ' .items | .[] | .hostId ')

# hostnames via hostid
for HOSTID in ${HOSTIDS} ; do
	CMIH["${HOSTID}"]=$(curl -s -u ${CMUSER}:${CMPASS} ${CMURL}/hosts/${HOSTID} | jq -r ' .hostname ')
done

# get cluster name
#   XXX - url-encode this properly
#   XXX - assumes ONE cluster
CLUSTER=$(curl -s -u ${CMUSER}:${CMPASS} ${CMURL}/clusters | jq -r '.items | .[] .name' | sed 's/"//g;s/ /%20/g')

# hbase service name
HBSVC=$(curl -s -u ${CMUSER}:${CMPASS} ${CMURL}/clusters/${CLUSTER}/services | jq -r ' .items | .[] | if .type == "HBASE" then . else empty end | .name ')

# hbase service REGIONSERVER roles
HBRSROLES=$(curl -s -u ${CMUSER}:${CMPASS} ${CMURL}/clusters/${CLUSTER}/services/${HBSVC}/roles | jq -r ' .items | .[] | .name ' | grep -i REGIONSERVER)

for HBRSROLE in ${HBRSROLES} ; do
	HBRSI=$(curl -s -u ${CMUSER}:${CMPASS} ${CMURL}/clusters/${CLUSTER}/services/${HBSVC}/roles/${HBRSROLE} | jq -r ' .hostRef.hostId ')
	echo ${CMIH["${HBRSI}"]}
done
