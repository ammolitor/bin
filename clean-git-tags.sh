#!/bin/bash

 for tag in $(git tag -l | awk '! /splice/ {print}'); do
	 git tag -d ${tag};
	 git push origin :refs/tags/${tag};
	 # git push origin :refs/heads/${tag};
 done
