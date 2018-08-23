#!/usr/bin/env bash

sudo ifconfig en0 down
sudo pkill vpnagentd ciscod
sleep 3
sudo ifconfig en0 up
