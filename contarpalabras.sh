#!/bin/bash

for i in `cat $1`
do	
	echo $i se repite: `egrep -i -o $i $2 | wc -l`
done
