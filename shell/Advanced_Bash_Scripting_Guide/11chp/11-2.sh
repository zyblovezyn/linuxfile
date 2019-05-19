#########################################################################
# File Name: 11-2.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Sat 18 May 2019 11:23:50 AM EDT
#########################################################################
#!/bin/bash

PI=3.1415926538979
DecimalConstant=31373
Message1="Greetings,"
Message2="Earthling"

echo

printf "pi to 2 decimal places = %1.2f" $PI
echo

printf "Pi to 9 decimal places = %1.9f" $PI

printf "\n"

printf "Constant =\t%d\n" $DecimalConstant

printf "%s %s \n" $Message1 $Message2
echo

Pi12=$(printf "%1.12f" $PI)

echo "Pi to 12 decimal places = $Pi12"

Msg=`printf "%s %s \n" $Message1 $Message2` 

echo $Msg;echo $Msg

exit 0

