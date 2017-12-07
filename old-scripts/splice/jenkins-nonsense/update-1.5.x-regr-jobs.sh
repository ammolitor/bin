#!/bin/bash

for job in $(java -jar jenkins-cli.jar -s http://jm:8080 list-jobs test_1.5.x | grep -v benchmarkcluster); do
	echo ${job}
   	java -jar jenkins-cli.jar -s http://jm:8080 get-job test_1.5.x/${job} | \
		sed '/<string>cdh5.4.10<\/string>/d' | \
		sed '/<string>cdh5.4.8<\/string>/a <string>cdh5.4.10</string>' | \
		sed '/<string>srv11<\/string>/d' | \
		sed '/<string>srv12<\/string>/d' | \
		sed '/<string>srv21<\/string>/d' | \
		sed '/<string>srv22<\/string>/d' | \
		sed '/<string>srv115<\/string>/d' | \
		sed '/<string>srv116<\/string>/d' | \
		sed 's#<combinationFilter>( (spliceProfile==\&quot;cdh5.3.2\&quot;) \&amp;\&amp; (clusterManager==\&quot;srv01\&quot;) \&amp;\&amp; (clusterRegionserver==\&quot;srv02\&quot;) ) || ( (spliceProfile==\&quot;cdh5.4.8\&quot;) \&amp;\&amp; (clusterManager==\&quot;srv06\&quot;) \&amp;\&amp; (clusterRegionserver==\&quot;srv07\&quot;) ) || ( (spliceProfile==\&quot;hdp2.2.4\&quot;) \&amp;\&amp; (clusterManager==\&quot;srv16\&quot;) \&amp;\&amp; (clusterRegionserver==\&quot;srv17\&quot;) ) || ( (spliceProfile==\&quot;mapr0.98.4\&quot;) \&amp;\&amp; (clusterManager==\&quot;srv21\&quot;) \&amp;\&amp; (clusterRegionserver==\&quot;srv22\&quot;) ) || ( (spliceProfile==\&quot;cdh5.4.10\&quot;) \&amp;\&amp; (clusterManager==\&quot;srv115\&quot;) \&amp;\&amp; (clusterRegionserver==\&quot;srv116\&quot;) )</combinationFilter>#<combinationFilter>( (spliceProfile==\&quot;cdh5.4.8\&quot;) \&amp;\&amp; (clusterManager==\&quot;srv01\&quot;) \&amp;\&amp; (clusterRegionserver==\&quot;srv02\&quot;) ) || ( (spliceProfile==\&quot;cdh5.4.10\&quot;) \&amp;\&amp; (clusterManager==\&quot;srv06\&quot;) \&amp;\&amp; (clusterRegionserver==\&quot;srv07\&quot;) ) || ( (spliceProfile==\&quot;hdp2.2.4\&quot;) \&amp;\&amp; (clusterManager==\&quot;srv16\&quot;) \&amp;\&amp; (clusterRegionserver==\&quot;srv17\&quot;) )</combinationFilter>#' | \
		java -jar jenkins-cli.jar -s http://jm:8080 update-job test_1.5.x/${job}
done
