#!/bin/bash
echo "enter table "

read -r num;
lp=1;
while(($lp<=10))
do
echo $(($num*$lp))
lp=$(($lp++))
fi

