#########################################################################
# File Name: 10-11.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Sun 14 Apr 2019 10:25:41 AM EDT
#########################################################################
#!/bin/bash

OUTFILE=symlinks.list

directory=${1-`pwd`}

echo "symbolic links in directory \"$directory\"" > "$OUTFILE"
echo "----------" >> "$OUTFILE"

for file in $directory
do
	echo "$file"
done | sort >> "$OUTFILE"

exit 0
