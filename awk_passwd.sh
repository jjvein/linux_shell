#!/bin/bash
#通过两种不同的方式来显示/etc/passwd中的文件内容.
awk -F: '{print "filename:" FILENAME "\tlinenumber:" NR "\tcolumns:" NF "\tcontent:" $0 }' /etc/passwd
#	解释
#	FILENAME 文件名
#	NR	行号
#	NF	总域数
# 	$0	所有域
echo -e "\n"	#这里要注意了:echo 不带参数的是不会转义 \n,只有加上-e 参数.....
awk -F: '{printf("filename:%s \t linenumber:%s \t columns:%s \t content:%s\n"),FILENAME,NR,NF,$0 }' /etc/passwd
#	解释
#	通过printf函数,能够更加清晰的看到这些结果.
echo	#这里表示插入一个\n进行换行....
awk -F: '/^root/ {print $7}' /etc/passwd
