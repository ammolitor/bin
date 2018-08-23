#!/usr/bin/env bash

# sudo rm -rf “/Applications/Python”
# sudo rm -rf /Library/Frameworks/Python.framework
# sudo rm -rf /usr/local/bin/python

version="${1:-"3.6"}"
for file in $(file -h /usr/local/bin/* | grep "symbolic link to ../../../Library/Frameworks/Python.framework/Versions/${version}" | cut -d : -f 1); do
  rm ${file}
done
rm -rf "/Library/Frameworks/Python.framework/Versions/${version}"
rm -rf "/Applications/Python ${version}"
set -- Applications Documentation Framework ProfileChanges SystemFixes UnixTools
for package do
  rm -rf "/Library/Receipts/Python${package}-${version}.pkg"
done

