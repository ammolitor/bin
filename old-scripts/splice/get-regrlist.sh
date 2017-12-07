#!/bin/bash

dirs1=( test-suites/odbc test-suites/temptables test-suites/nist test-suites/auth )
dirs2=( performance/tpch/tpch1g test-suites/poc/hartehanks test-suites/poc/hartehanks/HH_windowingfunctions test-suites/poc/movableink test-suites/poc/radiumone test-suites/poc/workday )

for dir in ${dirs1[@]}; do
	find ${dir} -name \*.sql | sort
done

for dir in ${dirs2[@]}; do
	find ${dir} -path \*queries\* -name \*.sql | sort
done

