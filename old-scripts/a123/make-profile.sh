#!/bin/bash

high=200
low=-200
range=0
ivl=0
let range=$high-$low
let ivl=$range/96

point=$high
while [ $point -ge $low ]
do
	echo $point
	let point=$point-$ivl
done



