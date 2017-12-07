#!/bin/bash

regionserver=${1:-stl-colo-srvXX}

for file in $(find $(pwd) -type f \( ! -name \*.java \) -exec grep -l localhost '{}' \;); do
	    sed -i "s/localhost/${regionserver}/g" ${file}
done
