#!/bin/bash
# curl -s -u ammolitor:$(cat ${HOME}/.github_oauth) -H 'Accept: application/vnd.github.moondragon+json, application/json, text/plain' https://api.github.com/orgs/ORGNAME/repos?page=1 | jq -r '.[].ssh_url'
curl -s -u ammolitor:$(cat ${HOME}/.github_oauth) -H 'Accept: application/vnd.github.moondragon+json, application/json, text/plain' https://api.github.com/users/ammolitor/repos?page=1 | jq -r '.[].ssh_url'
