#!/bin/bash

aws ec2 describe-instances | jq -r ' .Reservations[] | .Instances[] | select(.Placement.GroupName=="samsung4") | { Name: .Tags[] | select(.Key=="Name") | .Value, PublicDnsName: .PublicDnsName }'
