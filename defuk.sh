#!/usr/bin/env bash
set -Eeuo pipefail
set -x

echo ${PWD}
find . -type f -name \*.rst -exec sed -i '' "s/‘/'/g" '{}' \;
find . -type f -name \*.rst -exec sed -i '' "s/’/'/g" '{}' \;
find . -type f -name \*.rst -exec sed -i '' 's/“/"/g' '{}' \;
find . -type f -name \*.rst -exec sed -i '' 's/”/"/g' '{}' \;
