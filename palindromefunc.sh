#!/bin/bash
function isPalindrome(){
num=$1
temp=$num
reverse=0
while [ $num -gt 0 ]
do
 s=$((num%10))
 reverse=$((reverse*10+s))
 num=$((num/10))
done
if [ $temp -eq $reverse ]
then
 echo "It is a Palindrom"
else
 echo "It is not a Palindrome"
fi
}


palin=$(isPalindrome 767)
echo $palin
