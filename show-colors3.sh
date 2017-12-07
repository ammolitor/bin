#!/bin/bash
# tputcolors

echo
echo -e "$(tput bold) reg  bld  und   tput-command-colors$(tput sgr0)"

for b in {0..9}; do
	for i in {0..9}; do
		echo " $(tput setab $b)$(tput setaf $i)Text$(tput sgr0) $(tput setab $b)$(tput bold)$(tput setaf $i)Text$(tput sgr0) $(tput setab $b)$(tput sgr 0 1)$(tput setaf $i)Text$(tput sgr0)  \$(tput setab $b) \$(tput setaf $i)"
	done
done

echo ' Bold            $(tput bold)'
echo ' Underline       $(tput sgr 0 1)'
echo ' Reset           $(tput sgr0)'
echo
