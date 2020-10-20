#! /bin/bash
# Sort Computation result in descending order.
#Author:Pratibha Mastud


echo "Enter three different num"
read a
read b
read c

Result1=$(($a+$b*$c))
Result2=$(($a*$b+$c))
Result3=$(($a/$b+$c))
Result4=$(($a%$b+$c))


arr=($Result1 $Result2 $Result3 $Result4)
echo "Original results array: " ${arr[*]}
temp=0
#Sorting Descending order.
for (( i=0; i<4; i++ ))
do
	for (( j=$i; j<4; j++ ))
	do
		if [ ${arr[$i]} -lt ${arr[$j]} ];
		then
			temp=${arr[$i]}
			${arr[$i]}=${arr[$j]}
			${arr[$j]}=$temp
		fi
	done
done

echo -e "\nSorted Numbers Descending Order :"
for (( i=0; i<4; i++ ))
do
	echo ${arr[$i]}
done
