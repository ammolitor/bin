#!/bin/bash

bucket="splicemachine"
prefix="dcos"

for object in $(aws s3 ls --recursive  s3://${bucket}/${prefix}/ | awk '{print $4}'); do
    echo "SETTING ACL FOR ${object}"
    aws s3api put-object-acl --acl public-read --bucket ${bucket} --key ${object}
    echo "CHECKING ACL FOR ${object}"
    aws s3api get-object-acl --bucket ${bucket} --key ${object}
done 
