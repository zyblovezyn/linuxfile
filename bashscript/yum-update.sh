#########################################################################
# File Name: yum-update.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Tue 23 Apr 2019 10:21:15 AM EDT
#########################################################################
#!/bin/bash

# 切换到yum源的目录下
cd /etc/yum.repos.d/
ls

# 先备份，以防万一
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup

# 使用wget下载repo配置文件
#163的源：
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.163.com/.help/CentOS7-Base-163.repo

