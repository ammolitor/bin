
#!/usr/bin/env bash
set -Eeuo pipefail

base_path="/var/cache/ccache"

for dir in 0 1 2 3 4 5 6 7 8 9 a b c d e f tmp; do
  rm -rf ${base_path}/${dir}
done;
