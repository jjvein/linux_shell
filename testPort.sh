#!/bin/bash
echo FTP status:
ftp=`netstat -an | grep LIST | grep :21`
if [ "$ftp" != '' ];then
	echo "21 port is listened.FTP is running"
else
	echo "FTP is down"
fi
echo
echo WWW status:
www=`netstat -an | grep LIST | grep :80`
if [ "$www" != '' ];then
	echo "80* port is listened.WWW is running"
else
	echo "WWW is down"
fi
echo 
echo POP3 status:
pop3=`netstat -an | grep LIST | grep :25`
if [ "$pop3" != '' ];then
	echo 25 port is listened .POP3 is running
else 
	echo pop3 is down
fi
echo
echo SSH status:
ssh=`netstat -an | grep LIST | grep :22`
if [ "$ssh" != '' ];then
	echo 22 port is listened .SSH is working
else
	echo SSH is down
fi
