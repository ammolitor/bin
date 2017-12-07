#!/bin/bash

ls Ren*.log | while read file
do
	mv "$file" `echo "$file" | sed 's/ //g'`
done

