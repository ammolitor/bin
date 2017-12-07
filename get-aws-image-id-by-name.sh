#!/bin/bash

regions=( $(aws ec2 describe-regions | jq -r .Regions[].RegionName) )

for region in ${regions[@]}; do
    # echo "${region}: { AMI: $(aws ec2 describe-images --filters "Name=name,Values=CentOS Linux 6 x86_64 HVM EBS 1602-74e73035-3435-48d6-88e0-89cc02ad83ee-ami-21e6d54b.3" --region ${region} | jq -r .Images[].ImageId) },"
    # echo "${region}: { AMI: $(aws ec2 describe-images --owners amazon --filters "Name=name,Values=amzn-ami-hvm-2016.09.0.20161028-x86_64-gp2" --region ${region} | jq -r .Images[].ImageId) },"
    # echo "${region}: { AMI: $(aws ec2 describe-images --owners amazon --filters "Name=name,Values=amzn-ami-vpc-nat-hvm-2016.09.1.20170119-x86_64-ebs" --region ${region} | jq -r .Images[].ImageId) },"
    # echo "${region}: { AMI: $(aws ec2 describe-images --filters "Name=name,Values=dcos-centos7-201608302346" --region ${region} | jq -r .Images[].ImageId) },"
    echo -en "${region}\t"
    aws --region ${region} ec2 describe-images --filters "Name=owner-id,Values=679593333241" "Name=description,Values=CentOS Linux 7 x86_64 HVM EBS 1708_01" | jq -r .Images[].ImageId
done

