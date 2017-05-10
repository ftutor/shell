#!/bin/bash

i=0
for((i;i<10;i++));
do
	left=""
	right=""
	for((j=0;j<$i;j++));
	do
		digital=`expr $i - $j`
		if [ $j -gt 0 ]    
		then
			right=$right$j
		fi
		left=$left$digital

	done
	if [ $i -gt 0 ] 
	then 
		echo $left"0"$right$i
	elif [[ $i -eq 0 ]]; then
		echo $left"0"$right
	fi
done