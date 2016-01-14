#!/usr/bin/env bash
# 貌似ping 这个命令无法退出， ctrl + c 可以终止每个ping命令
for ip in 192.168.1.{1..255}; do
    ping -c 2 $ip &> /dev/null
    if [ $? -eq 0 ];then
        echo $ip is alive
    else 
        echo $ip is dead
    fi
done
