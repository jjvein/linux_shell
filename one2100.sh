#!/bin/bash
loop=100
i=1
sum=0
while [ $i -le $loop ]
do
sum=`expr $sum + $i`
i=`expr $i + 1`
done
echo $sum
