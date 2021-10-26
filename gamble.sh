#!/bin/bash
currentBal=100;
totalCount=0;
winCount=0;
loseCount=0;


	while [ $currentBal -gt 0 -a $currentBal -lt 200 ]
do
	result=$((RANDOM%2))
	case $result in
		1)
		((currentBal++))
		((winCount++))
		((totalCount++))
				;;
		0)
		((currentBal--))	
		((loseCount++))
		((totalCount++))
				;;
	esac
done
	echo $winCount "wins"
	echo $loseCount "loses"
	echo $totalCount 
	echo $currentBal "Currentbal"
