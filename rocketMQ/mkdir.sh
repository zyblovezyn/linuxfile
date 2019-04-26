#########################################################################
# File Name: mkdir.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Thu 25 Apr 2019 10:00:22 AM EDT
#########################################################################
#!/bin/bash


# 创建目录

dirname=/usr/local/rocketmq

mkdir -p "$dirname"{1,2}/{store,store/commitlog,store/consumequeue,store/index,store/abort,store/checkpoint,logs}

