#!/usr/bin/env bash

declare -a newArray
i=1
while [ $i -lt 100 ]
do
    i=$(($i + 1))
    newArray[${i}]=Hello${i}World
done

echo ${newArray[*]}
exit
