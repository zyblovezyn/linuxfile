#########################################################################
# File Name: dockermysql.sh
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
# Created Time: Thu 23 May 2019 07:07:39 PM CST
#########################################################################

echo "当前执行文件......$0"

# Mysql数据库相关配置
mysql_database_host="localhost"
mysql_database_name=""
mysql_root_user_name="root"
mysql_root_user_pwd="zyb12358"
mysql_remote_user_name="rt123"
mysql_remote_user_pwd="rt123"
mysql_table_name="";
# 进入mysql控制台 默认用户是root
echo "Docker Mysql控制台创建数据库...."
echo "***********************************以下容执行可能会有错误提示，请忽略**************************"
# 为root用户设置密码
echo "Docker Mysql控制台为root用户设置密码....$mysql_root_user_pwd"
sql_alter_user="ALTER USER '$mysql_root_user_name'@'$mysql_database_host' IDENTIFIED BY '$mysql_root_user_pwd'"
mysql -u$mysql_root_user_name -p$mysql_root_user_pwd -e"$sql_alter_user"
 
 
# 添加远程登录用户
echo "Docker Mysql控制台创建远程用户....$mysql_remote_user_name"
sql_create_user="CREATE USER '$mysql_remote_user_name'@'%' IDENTIFIED WITH mysql_native_password BY '$mysql_remote_user_pwd'"
mysql -u$mysql_root_user_name -p$mysql_root_user_pwd -e"$sql_create_user"
 
#为远程账号添加权限
echo "Docker Mysql控制台为远程账号添加权限.... *.* TO '$mysql_remote_user_name'@'%'"
sql_change_password="ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password'"
sql_grant_user="GRANT ALL PRIVILEGES ON *.* TO '$mysql_remote_user_name'@'%'"
mysql -u$mysql_root_user_name -p$mysql_root_user_pwd -e"$sql_change_password"
mysql -u$mysql_root_user_name -p$mysql_root_user_pwd -e"$sql_grant_user"

 
# 创建数据库
if [ -z "$mysql_database_name" ]
then
	;
else
	echo "Docker Mysql控制台创建数据库.... $mysql_database_name"
	sql_create_database="create database IF NOT EXISTS $mysql_database_name"
	mysql -u$mysql_root_user_name -p$mysql_root_user_pwd -e"$sql_create_database"
fi

#用户创建Mysql数据库脚本

echo "***********************************上内容执行可能会有错误提示，请忽略**************************"

