#!/bin/bash -x
for job in $(java -jar jenkins-cli.jar -s http://qajm:8080 list-jobs test_2.0.x | grep -v setup ); do
    echo ${job}
    java -jar jenkins-cli.jar -s http://qajm:8080 delete-job test_2.0.x/${job}
done



