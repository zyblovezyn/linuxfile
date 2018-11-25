#########################################################################
# File Name: 4-6.sh
# Author: zhangyuanbo
# mail: pual.office@gmail.com
# Created Time: 2018-11-25
#########################################################################
#!/bin/bash

# wh,whois节点名字查询

E_NOARGS=65

if [ -z "$1" ]
then
	echo "Usage:`basename $0` [domain-name]"
	exit $E_NOARGS
fi

#Check script name and call proper server
#检查见本名字，然后调用适合的服务器

case `basename $0` in 
"wh") whois $1@whois.ripe.net;;
"wh-ripe") whois $1@whois.ripe.net;;
"wh-radb") whois $1@whois.radb.net;;
"wh-cw") whois $1@whois.radb.net;;
*) echo "Usage:`basename $0`[domain-name]";;
esac

exit $?

