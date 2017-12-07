#!/bin/bash

for file in $(find . ); do
	xattr -d $(xattr -l ${file} | awk -F: '{print $1}') ${file};
done

