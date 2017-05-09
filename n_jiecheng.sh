#!/bin/bash

function jiechen(){
	n=$1
	for((i=$n; i>0; i--))
	do
		echo "i="$i
		sum=$[$sum*$i]
		echo "sum="$sum

	done
	return $sum
}

function jiechenWhile(){
	while (($n >0));
	do
		echo "n="$n
		sum=$[$sum*$n]
		echo "sum="$sum
		let "n--"
	done
	return $sum
}

function callTest(){
	jiechen
}
echo "please enter a positive number:"
echo "input number:"$1
n=$1
#echo "n="$n
if ( $n < 0 ) then 
	echo "the number you enter is illegal,please enter a positive number"
fi	
sum=1
#echo "sum:"$sum
jiechen 7
if (($? > 0))
then 
	echo "execute successful"
fi
echo "function return:$? !"
echo "result is:"$sum

