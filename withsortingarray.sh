declare -a arr
for ((i=0; i<10; i++))
do
   num=$(((RANDOM%10)+100))
   #echo $num
   arr[i]=$num
   #echo ${arr[i]}
done

echo "Array inserted elements before sort are:"
echo ${arr[*]}


#Bubble sort 
for ((i = 0; i<10; i++))
do
    for((j = 0; j<10-i-1; j++))
    do
    
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # swap the elements
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done

echo "Array elements after the sort:"
echo ${arr[*]}