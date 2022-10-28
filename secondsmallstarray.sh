#!/bin/bash
declare -a arr
for ((i=0; i<10; i++))
do
   num=$(((RANDOM%10)+100))
   #echo $num
   arr[i]=$num
   #echo ${arr[i]}
done
echo "the inserted elements are"
for ((i=0; i<10; i++))
do
	echo ${arr[i]}
done 
l1=${arr[0]}
l2=${arr[0]}
for ((i=0; i<9; i++))
do
   if [ ${arr[i+1]} -lt $l2 -a ${arr[i+1]} -gt $l1 ]
   then
       l2=${arr[i+1]}
   
   elif [ ${arr[i+1]} -lt $l1 ]
   then
   
       	    l2=$l1
            l1=${arr[i+1]}
	fi
	done
echo "the smallest number is $l1"
echo "the second smallest number is $l2"
 
 