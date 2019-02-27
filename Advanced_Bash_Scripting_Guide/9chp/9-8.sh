#########################################################################
# File Name: 9-8.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-12-05
#########################################################################
#!/bin/bash

# IFS为空时的$*与$@的不同

mecho()
{
	echo "$1,$2,$3"
}
IFS=""

set a b c
mecho "$*"
mecho $*

mecho "$@"
mecho $@

exit 0
