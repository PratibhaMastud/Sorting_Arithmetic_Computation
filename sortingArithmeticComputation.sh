#! /bin/bash
# Store Every Arithmetic Computation Results in dictionary
#Author:Pratibha Mastud


echo "Enter three different num"
read a
read b
read c

Result1=$(($a+$b*$c))
Result2=$(($a*$b+$c))
Result3=$(($a/$b+$c))
Result4=$(($a%$b+$c))
declare -A result
result[1]=$Result1
result[2]=$Result2
result[3]=$Result3
result[4]=$Result4
#declare an array
declare -a arr=()
i=0
echo "Reading the dictionary values into Array"
for i in 3
do	
	#append each result into array
	arr+=${result[*]}
done
	echo "Result Array : ""${arr[*]}"
      

