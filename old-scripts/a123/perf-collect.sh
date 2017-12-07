#!/bin/bash

date

top -b -n1 |\
egrep 'uiconnector|pmuconnector|sguconnector|osafevtd|grpcntlr'
