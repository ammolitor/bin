#!/usr/bin/env bash

LOCAL_HOST="localhost"
LOCAL_PORT=8088
REMOTE_HOST="ec2-10.10.10.10.compute-1.amazonaws.com"
REMOTE_PORT=8088
REMOTE_USER="ec2-user"

ssh -L ${LOCAL_HOST}:${LOCAL_PORT}:${REMOTE_HOST}:${REMOTE_PORT} ${REMOTE_USER}@${REMOTE_HOST}
