#!/bin/bash
# 全方位系统监控.
date=`date +%Y%m%d`
hour=`date +%H`
date1=`date +%T%n%D`
echo "现在时间是: $date1"
#	设置检测日志目录.
dir="/root/system_detect/detect_${date}"
delay=60	#vmstat  里面的第一个参数
count=60	#需要监控的次数...
#	测试文件夹是否存在.
if ! test -d ${dir}
then
mkdir -p $dir  # -p 表示需要时创建目录的上层目录.即使文件夹存在也不当错误处理.
fi

#	使用 top 命令进行监控.
/usr/bin/top -b -d ${delay} -n ${count} > ${dir}/top_${hour}.txt 2>&1 &
#	上面的表示每隔60秒采集一次top信息.采集60次. 
#	2>&1 表示 将错误输出定向到标准输出.	&表示在后台运行.


#	下面进行 内存的查看.
/usr/bin/vmstat ${delay} ${count} > ${dir}/vmstat_${hour}.txt 2>&1 &
#	这里就不多做解释了..

#	下面进行I/O进行监控.
/usr/bin/iostat ${delay} ${count} > ${dir}/iostat_${hour}.txt 2>&1 &

#	最后将这个脚本放入crontab计划任务中,每小时执行一次,
#可以用 0 * * * * /git/linux_shell/system_detect.sh 来执行.







