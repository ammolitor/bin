#!/usr/bin/awk

# ssh <insert hostname or ip addr here> cat /var/spool/sgss/debug | awk -F":" '/22001:1319/{secs=$1; gsub(/^[0-9]*/,"",secs); datestr=sprintf("%s%s", strftime("%d-%H:%M:%S", $1), secs); realpwr=sprintf("%s", $4)} /22001:1315/{volt_1_mag=sprintf("%s", $4); print datestr, realpwr, volt_1_mag}'
awk -F":" '/22001:1319/{secs=$1; gsub(/^[0-9]*/,"",secs); datestr=sprintf("%s%s", strftime("%d-%H:%M:%S", $1), secs); realpwr=sprintf("%s", $4)} /22001:1315/{volt_1_mag=sprintf("%s", $4); print datestr, realpwr, volt_1_mag}'
