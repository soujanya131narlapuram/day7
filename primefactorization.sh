#!/bin/bash -x
declare -a arr
echo "enter the element"
read n

echo 'Prime factors are'
#ietrting from 1 to N/2, to heck if i can divide N
for ((i=1; i<= $(($n/2)); i++))
do
	#checking if i can divide N
    if (($n%$i == 0 )) 
    then
		#storing i into array
	    arr[i]=$i
        echo ${arr[$i]}
    fi
done
echo $n