#########################################################################
# File Name: 9-14.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-12-09
#########################################################################
#!/bin/bash

#	使用参数替换和error_message

:${HOSTNAME?} ${USER?} ${HOME?} ${MAIL?}

echo
echo "Name of the machine is $HOSTNAME"
echo "You are $USER"
echo "Your home is directory is $HOME"
echo "Your mail inbox is locate in $MAIL"
echo

ThisVariable=Value-of-ThisVariable

:${ThisVariable?}
echo "Value of ThisVariable is $ThisVariable"
echo

:${ZZXy23AB?ZZXy23AB has not been set.}

