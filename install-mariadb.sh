#########################################################################
# File Name: install-mariadb.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Tue 23 Apr 2019 10:25:54 AM EDT
#########################################################################
#!/bin/bash

 yum -y install MariaDB-server MariaDB-client
 systemctl start mariadb #启动服务
 mysql -uroot
