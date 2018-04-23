#!/usr/bin/env bash
# pip freeze | xargs pip uninstall -y
# curl https://bootstrap.pypa.io/get-pip.py | python2
sudo -H pip2 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 sudo -H pip2 uninstall -y
