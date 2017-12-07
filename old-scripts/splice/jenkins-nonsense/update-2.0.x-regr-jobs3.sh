#!/bin/bash

for job in $(java -jar jenkins-cli.jar -s http://jm:8080 list-jobs test_2.0.x); do
    echo ${job}
    java -jar jenkins-cli.jar -s http://jm:8080 get-job test_2.0.x/${job} | \
        sed 's#./sqlshell.sh#sqlshell.sh#' | \
        java -jar jenkins-cli.jar -s http://jm:8080 update-job test_2.0.x/${job}
done
