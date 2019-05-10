#########################################################################
# File Name: 10-24.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Fri 26 Apr 2019 08:57:36 AM EDT
#########################################################################
#!/bin/bash

echo;echo "hit a key,then hit return"

read Keypress

case "$Keypress" in
	[[:lower:]] ) echo "Lowercase letter";;
	[[:upper:]] ) echo "Uppercase letter";;
	[0-9] ) echo "Digit";;
	* ) echo :Punctuation,whitespace,or other;;
esac

exit 0



