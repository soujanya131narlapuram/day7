#!/bin/bash
declare -a v1
count=0
add=1
echo "enter the ranage between 1 to 100"
read n1
read n2
for (( i=n1; i<=n2; i++ )) 
do 
   #echo "i value is $i"
   digit1=$(( $i % 10 ))
   digit2=$(( $i / 10 ))
   #echo "$digit1,$digit2"
   if [ $digit1 -eq $digit2 ]
   then
		v1[count]=$i
		count=$(($count + $add))
		echo "the repeated digit number is $i"
   fi
done
