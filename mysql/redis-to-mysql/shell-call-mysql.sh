#########################################################################
# File Name: shell-call-mysql.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2019-04-06
#########################################################################
#!/bin/bash

mysql -uroot -pzyb12358 <<EOF
show databases;
use redis;
select * from tbl_device;
EOF
echo "select test ok"
