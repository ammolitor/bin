#!/bin/bash

COMMAND=$*
COMMAND_BASE=$1

${COMMAND} > ${COMMAND_BASE}.out 2>&1
