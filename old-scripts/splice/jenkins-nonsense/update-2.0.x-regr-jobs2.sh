#!/bin/bash

for job in $(java -jar jenkins-cli.jar -s http://jm:8080 list-jobs test_2.0.x | grep -v benchmarkcluster); do
    echo ${job}
    java -jar jenkins-cli.jar -s http://jm:8080 get-job test_2.0.x/${job} | \
        sed '/<string>hdp2.3.4<\/string>/d' | \
        java -jar jenkins-cli.jar -s http://jm:8080 update-job test_2.0.x/${job}
done
