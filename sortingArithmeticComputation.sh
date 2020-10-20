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
#Sorting Ascending order.
temp=0
for (( i=0; i<4; i++ ))
do 
	for (( j=0; j<4-i; j++ ))
	do
		if [ ${arr[j]} -lt ${arr[$((j+1))]} ];
		then
			#swap
			temp=${arr[j]}
			arr[$j]=${arr[$((j+1))]}
			arr[$((j+1))]=$temp

		fi
	done
done
echo "Sorting descending order :"
echo " " ${arr[*]}





