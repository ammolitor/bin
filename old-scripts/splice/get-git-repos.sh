#!/bin/bash
# curl -s -u ammolitor https://api.github.com/orgs/splicemachine/repos | awk '/ssh_url/{print $2}' | sed 's/[",]//g' | sort
curl -s -u ammolitor -H 'Accept: application/vnd.github.moondragon+json, application/json, text/plain' https://api.github.com/orgs/splicemachine/repos | awk '/ssh_url/{print $2}' | sed 's/[",]//g' | sort
