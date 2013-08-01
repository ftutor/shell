#!/bin/shell
hadoop fs -ls /projects/assetcommander/validation/pig_output/frontend_c1 > table.dat
suffix=".json"
tmpFile="name"
keyword="/"
echo ${suffix}


sed -e '1d' table.dat > table.dat 
cat table.dat | while read line
do 
	str=${line// /_}
	str=${str%${suffix}}
	str=${str##*/}
	sh restoreMongo.sh $str
	
done

 
