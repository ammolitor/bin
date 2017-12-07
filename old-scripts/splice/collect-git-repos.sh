#!/bin/bash

curl -s -u ammolitor https://api.github.com/orgs/splicemachine/repos | awk '/ssh_url/{print $2}' | sed 's/[",]//g' > $1
