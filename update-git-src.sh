#!/bin/bash

for dir in $( find $(pwd) -mindepth 1 -maxdepth 1 -type d) ; do
	echo -e "\n\n############################## UPDATING "$dir" ##############################\n"
	cd $dir
    # git checkout $(git symbolic-ref --short HEAD)
    git reset HEAD --hard
	git pull --rebase
    git fetch --tags
    git remote prune origin
done

