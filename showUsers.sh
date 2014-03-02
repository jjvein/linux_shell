#!/bin/bash
#	显示所有用户的用户名.然后列出用户总数.

echo Your system is :  `uname`	#uname 输出所用内核.
echo Users list:
allusers=`cat /etc/passwd | awk -F':' '{print $1}'| tr '\n' '     '`
#	awk 用 : 分割,然后打印第一行,最后用tr进行替换.
echo ${allusers}
count=`wc -l /etc/passwd`
#	使用wc -l 函数进行函数行的统计.
echo Users count: ${count}
