#!/bin/bash

for job in $(java -jar jenkins-cli.jar -s http://jm:8080 list-jobs test_2.5.x | grep -v benchmarkcluster); do
    echo ${job}
    java -jar jenkins-cli.jar -s http://jm:8080 get-job test_2.0.x/${job} | \
        sed 's#<string>cdh5.5.1</string>#<string>cdh5.5.2</string>#' | \
        sed 's#<string>hdp2.2.9</string>#<string>cdh5.6.0</string>#' | \
        sed '/<string>hdp2.3.0<\/string>/d' | \
        sed 's#<string>mapr0.98.12</string>#<string>mapr5.1.0</string>#' | \
        sed '/<string>srv11<\/string>/a <string>srv21<\/string>' | \
        sed '/<string>srv12<\/string>/a <string>srv22<\/string>' | \
        sed 's#<combinationFilter>( (platform=="cdh5.4.10")   \&amp;\&amp; (clusterManager=="srv11") \&amp;\&amp; (clusterRegionserver=="srv12") ) || ( (platform=="cdh5.4.10")   \&amp;\&amp; (clusterManager=="srv26") \&amp;\&amp; (clusterRegionserver=="srv27") )</combinationFilter>#<combinationFilter>( (platform==\&quot;cdh5.4.10\&quot;) \&amp;\&amp; (clusterManager==\&quot;srv11\&quot;) \&amp;\&amp; (clusterRegionserver==\&quot;srv12\&quot;) ) || ( (platform==\&quot;cdh5.5.2\&quot;) \&amp;\&amp; (clusterManager==\&quot;srv26\&quot;) \&amp;\&amp; (clusterRegionserver==\&quot;srv27\&quot;) ) || ( (platform==\&quot;mapr5.1.0\&quot;) \&amp;\&amp; (clusterManager==\&quot;srv21\&quot;) \&amp;\&amp; (clusterRegionserver==\&quot;srv22\&quot;) )</combinationFilter>#' | \
        sed 's#<combinationFilter>( (platform==\&quot;cdh5.4.10\&quot;)   \&amp;\&amp; (clusterManager==\&quot;srv11\&quot;) \&amp;\&amp; (clusterRegionserver==\&quot;srv12\&quot;) ) || ( (platform==\&quot;cdh5.4.10\&quot;)   \&amp;\&amp; (clusterManager==\&quot;srv26\&quot;) \&amp;\&amp; (clusterRegionserver==\&quot;srv27\&quot;) )</combinationFilter>#<combinationFilter>( (platform==\&quot;cdh5.4.10\&quot;) \&amp;\&amp; (clusterManager==\&quot;srv11\&quot;) \&amp;\&amp; (clusterRegionserver==\&quot;srv12\&quot;) ) || ( (platform==\&quot;cdh5.5.2\&quot;) \&amp;\&amp; (clusterManager==\&quot;srv26\&quot;) \&amp;\&amp; (clusterRegionserver==\&quot;srv27\&quot;) ) || ( (platform==\&quot;mapr5.1.0\&quot;) \&amp;\&amp; (clusterManager==\&quot;srv21\&quot;) \&amp;\&amp; (clusterRegionserver==\&quot;srv22\&quot;) )</combinationFilter>#' | \
        java -jar jenkins-cli.jar -s http://jm:8080 update-job test_2.0.x/${job}
done
