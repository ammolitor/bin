#!/bin/bash

PROFILE=${1}
SERIALNUMBER=${2}
MFACODE=${3}

echo "AWS_ACCESS_KEY_ID is:     ${AWS_ACCESS_KEY_ID}"
echo "AWS_SECRET_ACCESS_KEY is: ${AWS_SECRET_ACCESS_KEY}"
echo "AWS_SESSION_TOKEN is:     ${AWS_SESSION_TOKEN}"

echo "Unsetting AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY AWS_SESSION_TOKEN"
unset AWS_ACCESS_KEY_ID
unset AWS_SECRET_ACCESS_KEY
unset AWS_SESSION_TOKEN

echo "Setting AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY AWS_SESSION_TOKEN"
CREDS=$(aws sts get-session-token --serial-number ${SERIALNUMBER} --token-code ${MFACODE} --profile ${PROFILE} | jq -r ' . | .Credentials | "\(.AccessKeyId) \(.SecretAccessKey) \(.SessionToken)"')
export AWS_ACCESS_KEY_ID=$(echo ${CREDS} | awk '{print $1}')
export AWS_SECRET_ACCESS_KEY=$(echo ${CREDS} | awk '{print $2}')
export AWS_SESSION_TOKEN=$(echo ${CREDS} | awk '{print $3}')

#  Variable   | Creds/Config Entry    | Environment Variable  | Description
#  -----------|-----------------------|-----------------------|-------------------
#  access_key | aws_access_key_id     | AWS_ACCESS_KEY_ID     | AWS Access Key
#  secret_key | aws_secret_access_key | AWS_SECRET_ACCESS_KEY | AWS Secret Key
#  token      | aws_session_token     | AWS_SESSION_TOKEN     | AWS Token (temp credentials)

