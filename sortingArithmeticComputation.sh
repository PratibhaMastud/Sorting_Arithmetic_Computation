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

	#! /bin/bash

declare -A result
result[a]=0
result[b]=0
result[c]=0
result[d]=0

    result=( [a]=$Result1 [b]=$Result2 [c]=$Result3 [d]=$Result4 )
    echo "All values in Result Dictionary : "${result[@]}




