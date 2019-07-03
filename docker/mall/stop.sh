#########################################################################
# File Name: stop.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Sat 29 Jun 2019 11:13:58 AM CST
#########################################################################
#!/bin/bash

docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
