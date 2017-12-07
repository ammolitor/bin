#!/bin/bash

aws ec2 describe-instances | jq -r ' .Reservations[].Instances[] | { Name: .Tags[] | select(.Key=="Name") | .Value, PublicDnsName: .PublicDnsName }'
