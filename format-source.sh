#!/usr/bin/env bash
set -eEuo pipefail

# STYLES=( LLVM Google Chromium Mozilla WebKit Microsoft file )
STYLES=( file )

for STYLE in "${STYLES[@]}"; do
    find . -type f \( -name \*.c -o -name \*.cpp -o -name \*.h -o -name \*.hpp \) -a \( ! -name sqlite3.amalgamation.c \) -exec clang-format -style="${STYLE}" --verbose -i '{}' \;
    # git diff --stat > ${STYLE}.diff.stats
    # git reset HEAD --hard
done
