#########################################################################
# File Name: stop-redis.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2019-04-02
#########################################################################
#!/bin/bash
pkill redis-server
pkill redis-sentinel
