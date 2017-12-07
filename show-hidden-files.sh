#!/bin/bash

if [ "$1" == "yes" ]
then
	defaults write com.apple.finder AppleShowAllFiles -boolean true
	killall Finder
elif [ "$1" == "no" ]
then
	defaults delete com.apple.finder AppleShowAllFiles
	killall Finder
else
	echo "must specify yes or no"
	exit 1
fi
