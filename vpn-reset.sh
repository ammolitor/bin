#!/usr/bin/env bash

set -ex
sudo ifconfig en0 down
sudo ps waux | awk '/cisco/{print $2}' | xargs sudo kill -9
sleep 3
sudo ifconfig en0 up
