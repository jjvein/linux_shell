#!/bin/sh
#	判断系统版本...
SYSTEM=`uname -s`
case $SYSTEM in
Linux)
	echo "Your system is Linux"
;;
FreeBSD)
	echo "your system is FreeBSD"
;;
Darwin)
	echo Wow, Mac
;;
*) 
    echo Other System
;;
esac
