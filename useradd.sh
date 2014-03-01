#!/bin/bash
# 批量添加用户的例子.
# 使用到 read  for 循环. groupadd,useradd,passwd 等命令.
version=`uname -v`	#版本信息...
echo Welcome to $version
echo Please input your group name:
read group_name
groupadd $group_name
echo "$group_name group is added"
read -p "Please input your user name:" user_name 	#带参数的提示...
echo your username is : $user_name	
read -p "Please input start id:" start_id
echo "I will add user name like $username$start_id"
read -p "Please input end id:" end_id
#	当start_id > end_id 时,,就需要循环要求继续添加....
while [ $start_id -gt $end_id ]
do
	read -p "Please input end id " end_id
done

#	开始添加用户..
#	for 循环 
for (( i=$start_id ; i<=$end_id ; i++))
do
	useradd -g $group_name -M $user_name$i
	passwd -d $user_name$i
	chage -d 0 $user_name$i
done
#	成功!
echo OK,User add success....
