#!/bin/bash

for i in srv{56..59} srv{61..63} srv69 ; do ssh -q $i /sbin/ifconfig eth0; done | \
awk '/(ether|HWaddr)/{gsub(/ether/,"1 2 3 4");gsub(/:/,"-");print (tolower("01-"$5))}' | \
# while read mac ; do echo "cp CENTOS7-SWRAID0-LVM ${mac}" ; done
# while read mac ; do echo "cp CENTOS7 ${mac}" ; done
while read mac ; do echo "rm ${mac}" ; done


# for i in srv{50..52} srv{69..81} srv108 srv11{4..5} ; do
#  ssh $i /sbin/ifconfig eth0
# done | \
#  awk '/(ether|HWaddr)/{gsub(/ether/,"1 2 3 4");gsub(/:/,"-");print (tolower("01-"$5))}' | \
#    while read mac ; do
#      echo $mac
#      echo sudo cp CENTOS7-SWRAID0-LVM $mac
#    done
