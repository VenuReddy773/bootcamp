#!/bin/bash

declare -A diceCount
diceCount[1]=0
diceCount[2]=0
diceCount[3]=0
diceCount[4]=0
diceCount[5]=0
diceCount[6]=0

declare -A diceDetail
i=0
while [[ ${diceCount[1]} -lt 10 && ${diceCount[2]} -lt 10 && ${diceCount[3]} -lt 10 && ${diceCount[4]} -lt 10 && ${diceCount[5]} -lt 10 && ${diceCount[6]} -lt 10 ]]
do

diceVal=$((RANDOM%6+1))

diceDetail[$i]=$diceVal

DCval=${diceCount[$diceVal]}
echo "DCval" $DCval

diceCount[$diceVal]=$((DCval+1))

echo "I" $i
echo ${!diceCount[@]}
echo ${diceCount[@]}
((i++))
done
echo ${diceDetail[@]}

greatest=0
least=10
greatestIndex=unset
leastIndex=unset
for((j=1;j<=6;j++))
do
	if [ ${diceCount[$j]} -gt $greatest ]
then
	greatest=${diceCount[$j]}
	greatestIndex=$j
fi
	if [ ${diceCount[$j]} -lt $least ]
then
	least=${diceCount[$j]}
	leastIndex=$j
fi

done

echo $greatestIndex "is the Greatest no of times rolled"
echo $leastIndex "is the least no of times rolled"
