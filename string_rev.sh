#!/bin/bash

function revString(){
	for ((i=0;i<${#str};i++)) 
	do
		j=$[ ${#str} - $i-1 ]
		echo ${str:$j:1}
	done
}
read -p "please input a string:" str
echo "inputed string is:"$str

revString