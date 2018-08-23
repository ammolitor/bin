#!/usr/bin/env bash

# this is for use on a system with non-GNU date command (like a mac)

DATESTR=${1}
# example DATESTR: "2018-05-16T07:08:37-0500"

date -j -f '%Y-%m-%dT%H:%M:%S%z' "${DATESTR}" +%s
