#!/bin/bash

declare -a v1
echo 'enter the numbers'
for (( i=0; i<3; i++))
do
	read n
	v1[i]=$n
	#echo ${v1[i]}
done
sum=$((${v1[0]} + ${v1[1]} + ${v1[2]}))
if [ $sum -eq 0 ]
then 
    echo "integer adds to zero"
else
  	echo "not adds to zero"
fi	

