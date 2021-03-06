#!/bin/bash

git log \
 --graph \
 --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' \
 --abbrev-commit\
 --date=relative \
 ${1} ${2}
