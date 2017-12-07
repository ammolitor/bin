#!/bin/bash

for job in $(java -jar jenkins-cli.jar -s http://jm:8080 list-jobs test_2.0.x | grep -v benchmarkcluster); do
    echo ${job}
    java -jar jenkins-cli.jar -s http://jm:8080 get-job test_2.0.x/${job} | \
        sed 's#&quot;./splice-installer-${platform}/resources/scripts/flatten.sh&quot;#&apos;$(find /opt -type f -name flatten.sh)&apos;#' | \
        sed 's#&quot;sqlshell.sh -h ${clusterRegionserver} -f splice-installer-${platform}/resources/scripts/install-test.sql&quot;#&apos;sqlshell.sh -h &apos;${clusterRegionserver}&apos; -f $(find /opt -type f -name install-test.sql)&apos;#' | \
        java -jar jenkins-cli.jar -s http://jm:8080 update-job test_2.0.x/${job}
done
