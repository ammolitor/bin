#!/bin/bash

for file in $(find . -path ./db-\* -type f -name \*java); do 
    echo
    echo ${file}
    head -20 ${file}
    echo
done

