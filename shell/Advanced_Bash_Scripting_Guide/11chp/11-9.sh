#########################################################################
# File Name: 11-9.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Mon 27 May 2019 10:00:28 PM CST
#########################################################################
#!/bin/bash

# 修改当前工作目录

dir1=/usr/local
dir2=/var/spool

pushd $dir1
echo "Now in directory `pwd`."

pushd $dir2

echo "Now in directory `pwd`."

echo "The top entry in the DIRSTACK array is $DIRSTACK"
popd
echo "Now back in directory `pwd`"

popd

echo "Now back in original working directory `pwd`"

exit 0
