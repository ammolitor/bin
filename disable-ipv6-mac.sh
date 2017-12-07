#!/usr/bin/env bash

for hwport in $(sudo networksetup -listallhardwareports | awk -F: '/Hardware Port: /{ print "\"" $2 "\"" }' | sed 's/" /"/' | tr \\n ' '); do
    echo "Disabling ipv6 on : ${hwport}"
    # sudo networksetup -setv6off "\"${hwport}\""
done
