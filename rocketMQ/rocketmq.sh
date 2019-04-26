#########################################################################
# File Name: rocketMQ.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Thu 25 Apr 2019 09:03:26 AM EDT
#########################################################################
#!/bin/bash

# 配置/etc/hosts
hostsname='/etc/hosts'
[ -e $hostsname ] && echo " 
192.168.209.129 rocketmq-nameserver1
192.168.209.129 rocketmq-master1
192.168.209.129 rocketmq-nameserver2
192.168.209.129 rocketmq-master2" >> $hostsname

cat $hostsname

# 重启网卡
systemctl start network

# 创建目录

dirname1=/usr/local/rocketmq

mkdir -p $dirname{1,2}/{store,store/commitlog,store/consumequeue,store/index}



