#!/bin/bash
headCount=0;
tailCount=0;

while [ $headCount -lt 11 -o $tailCount -lt 11 ]

do 
	a=$((RANDOM%2))
	if [ $a -eq 1 ]
	then
	echo $headCount "headcount"
	((headCount++))
	else
	echo $tailCount "tailcount"
	((tailCount++))
	fi


done
