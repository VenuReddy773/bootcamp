#!/bin/bash


headsCount=0
tailsCount=0


while [ $headsCount -lt 21 -a $tailsCount -lt 21 ]
do
 result=$((RANDOM%2))


 if [ $result -eq 1 ]
   then ((headsCount++))
  else
    ((tailsCount++))
 fi


done


echo "heads" $headsCount "tails" $tailsCount


headsCount=21
tailsCount=21




echo "heads2" $headsCount "tails2" $tailsCount




while [ $((headsCount-tailsCount)) -lt 2 -a $((tailsCount-headsCount)) -lt 2 ]
do
 result=$((RANDOM%2))


 if [ $result -eq 1 ]
   then ((headsCount++))
  else
    ((tailsCount++))
 fi


done




echo "heads3" $headsCount "tails3" $tailsCount
