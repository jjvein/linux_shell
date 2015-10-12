#!/usr/bin/env bash

line=(root x 0 0 root /root /bin/bash)

count=0
for item in ${line[@]}
do
    [ $count -eq 0 ] && user=$item
    [ $count -eq 6 ] && shell=$item
    let count++
done;

echo $user\'s shell is $shell

