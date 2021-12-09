#!/bin/bash

date_str="2015-01-22 09:24:19"

date -f +"%Y-%m-%d %H:%M:%S" ${date-str} +%s

date -d @1637085511 +"%Y-%m-%dT%H:%M:%S%z"

