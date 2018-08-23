#!/usr/bin/env bash

BUCKETS=( "bucket1" "bucket2" )

for BUCKET in ${BUCKETS[@]}; do

    OBJECT_DELETE_PAYLOAD="$(aws s3api list-object-versions --bucket ${BUCKET} | jq -r '{ "Objects": [ .Versions[] | { "Key": .Key, "VersionId": .VersionId } ] }')"
    aws s3api delete-objects --bucket ${BUCKET} --delete "${OBJECT_DELETE_PAYLOAD}"

    DELETEMARKER_DELETE_PAYLOAD="$(aws s3api list-object-versions --bucket ${BUCKET} | jq -r '{ "Objects": [ .DeleteMarkers[] | { "Key": .Key, "VersionId": .VersionId } ] }')"
    aws s3api delete-objects --bucket ${BUCKET} --delete "${DELETEMARKER_DELETE_PAYLOAD}"

    # aws s3api delete-bucket --bucket ${BUCKET}

done
