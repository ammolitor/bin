#!/usr/bin/env bash

if [ ${1} == 2 ]; then
    PIP="pip2"
elif [ ${1} == 3]; then
    PIP="pip3"
else
    echo "please specify a pip version"
    exit 1
fi

if [ ${2} == "uninstall" ]; then
    ${PIP} freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 ${PIP} uninstall -y
elif [ ${2} == "update" ]; then
    ${PIP} freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 ${PIP} install -U
else
    echo "please specify an action for pip (uninstall | update)"
    exit 1
fi
