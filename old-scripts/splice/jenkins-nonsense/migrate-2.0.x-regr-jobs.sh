#!/bin/bash

for job in $(java -jar jenkins-cli.jar -s http://jm:8080 list-jobs test_2.0.x | grep -v benchmarkcluster | grep -v plain ); do
    echo ${job}
    java -jar jenkins-cli.jar -s http://jm:8080 get-job test_2.0.x/${job} | \
        sed 's#<matrix-project plugin="matrix-project@[0-9]\.[0-9]\.[0-9]">#<project>#' | \
        sed 's#</matrix-project>#</project>#' | \
        sed 's#<canRoam>false</canRoam>#<canRoam>true</canRoam>#' | \
        sed '/<assignedNode>slave01<\/assignedNode>/d' | \
        sed '/executionStrategy/d' | \
        sed '/runSequentially/d' | \
        sed '/combinationFilter/d' | \
        java -jar jenkins-cli.jar -s http://qajm:8080 create-job test_2.0.x/${job}
done

exit 0
