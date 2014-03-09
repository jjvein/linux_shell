#!/bin/bash
#	该shell用来操作一个数据库....一个简单的例子来展示如何用
#	shell对数据库的信息进行操作
#这里使用<<EOF为标记shell脚本中SQL命令的开始和结束...
#<<EOF 和EOF 之间的命令求安慰操作Mysql的命令,其中EOF仅仅是标记,也可用其他支付替代
mysql -u root -p <<EOF
use test;
show tables;
create table \`user\` (
	\`id\` int(11) not null AUTO_INCREMENT,
	\`name\` varchar(20) not null,
	\`password\` varchar(20) not null,
	\`status\` tinyint(4) not null DEFAULT '0',
	primary key (\`id\`)
)ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


EOF
#	用反斜杠替代的原因很简单...反斜杠表示linux 命令.不然会解释成linux命令....
exit 0;
