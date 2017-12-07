#!/bin/bash
for i in `cat ../testboxen`
	do scp ./$1 root@$i: 
done
