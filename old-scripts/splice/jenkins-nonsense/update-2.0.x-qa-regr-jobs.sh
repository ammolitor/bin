#!/bin/bash -x
for job in $(java -jar jenkins-cli.jar -s http://qajm:8080 list-jobs test_2.0.x | grep -v setup ); do
    echo ${job}
    java -jar jenkins-cli.jar -s http://qajm:8080 get-job test_2.0.x/${job} | \
        # sed '/<blockBuildWhenUpstreamBuilding>/a <jdk>jdk1.7.0<\/jdk>' | \
        sed '/<triggers>/d' | \
        sed '/<jenkins.triggers.ReverseBuildTrigger>/d' | \
        sed '/<spec\/>/d' | \
        sed '/<upstreamProjects>/d' | \
        sed '/<threshold>/d' | \
        sed '/<name>FAILURE<\/name>/d' | \
        sed '/<name>SUCCESS<\/name>/d' | \
        sed '/<ordinal>[0-9]<\/ordinal>/d' | \
        sed '/<color>RED<\/color>/d' | \
        sed '/<color>BLUE<\/color>/d' | \
        sed '/<completeBuild>true<\/completeBuild>/d' | \
        sed '/<\/threshold>/d' | \
        sed '/<\/jenkins.triggers.ReverseBuildTrigger>/d' | \
        sed '/<\/triggers>/d' | \
        sed '/<jdk>jdk1.7.0<\/jdk>/a <triggers/>' | \
        java -jar jenkins-cli.jar -s http://qajm:8080 update-job test_2.0.x/${job}
done



