#!/bin/bash

ARG=$#
F1=$1
F2=$2
F3=$3

#Extraer ultimo numero
LAST_NUM=$(cat $F2 | cut -d":" -f2 | sort -n -r | sed -n 1p)
NUM=$LAST_NUM

cat $F2 > $F3

while read NAME
do
	NUM=$(($NUM + 1))
	NUEVO="$NAME:$NUM:/home/$NAME:/bin/bash"

	echo $NUEVO >> $F3
done < $F1

cat $F3 | sort -t":" -k2n > ${F3}
