#########################################################################
# File Name: start-redis-sentinel.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2019-04-02
#########################################################################
#!/bin/bash

echo start redis server 7501 7502 7503 7504
echo start redis sentinel 7505 7506
echo -----------------------------------

redis-server ./7501/redis-7501.conf 
redis-server ./7502/redis-7502.conf
redis-server ./7503/redis-7503.conf 
redis-server ./7504/redis-7504.conf 

redis-sentinel ./7505/sentinel.conf &
redis-sentinel ./7506/sentinel.conf &
echo -----------------------------------
echo start end 

