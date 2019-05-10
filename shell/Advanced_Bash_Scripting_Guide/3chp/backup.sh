#########################################################################
# File Name: backup.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Tue 20 Nov 2018 07:29:43 AM EST
#########################################################################
#!/bin/bash
# 备份最后一天所有修改的文件

# 在一个traball中(经过tar和gzip处理过的文件)
#+ 备份最后24小时当前目录下的所有修改的文件

BACKUPFILE=backup-$(date +%Y-%m-%d)
#	在备份文件中嵌入日期
archive=${1:-$BACKUPFILE}
#	如果在命令行中没有指定备份文件的文件名，
#+  那么将默认使用“backupfile-yyyy-mm-dd.tar.gz”.
tar -cvf - `find . -mtime -1 -type f print` > $archive.tar
gzip $archive.tar
echo "Directory $PWD backed up in archive file \"$archive.tar.gz"\."

# 以上代码在文件名含有空格时会报错
# 使用以下代码

find . -mtime -1 -type f -print0 | xargs -0 tar cvf "$archive.tar"
#		使用gun版本的find

find . -mtime -1 -type f -exec tar cvf "$archive.tar" '{}' \;
#		对于其他风格的UNIX便于移植，但是比较慢
exit 0

