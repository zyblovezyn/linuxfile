#########################################################################
# File Name: update-mirror.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Fri 17 May 2019 09:31:24 AM EDT
#########################################################################
#!/bin/bash

rpm -q wget
if [ $? -ne 0 ];then
	yum -y install wget
fi

#进行备份
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup


wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo

yum clean all

yum makecache

yum update

yum install -y yum-utils device-mapper-persistent-data lvm2

yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo  

yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

yum -y upgrade
