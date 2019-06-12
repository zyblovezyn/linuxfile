#########################################################################
# File Name: dockermysql.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Thu 23 May 2019 07:07:39 PM CST
#########################################################################
#!/bin/bash

docker run -p 3306:3306 --name mysql-mall -v /usr/local/docker/mysql/conf:/etc/mysql -v /usr/local/docker/mysql/logs:/var/log/mysql -v /usr/local/docker/mysql/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=zyb12358 -d mysql

if [ $? -eq 0 ];then
	docker cp /root/linuxfile/mall/docker-mall-mysql.sh  mysql-mall:/usr/local/docker-mall-mysql.sh
fi

if [ $? -eq 0 ];then
	docker exec -it mysql-mall  /bin/bash -c "sh /usr/local/docker-mall-mysql.sh"
fi



