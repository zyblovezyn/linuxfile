#！/bin/bash
#file:docker_mysql_create_table.sh
#company:cvnavi.com
#author:Pengjunlin

echo "当前执行文件......$0"

# Mysql数据库相关配置

mysql_database_host="localhost"
mysql_database_name="filecache"
mysql_root_user_name="root"
mysql_root_user_pwd="root"
mysql_remote_user_name="rtvsweb"
mysql_remote_user_pwd="rtvs2018"
mysql_table_name="avinfo";
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
sql_grant_user="GRANT ALL PRIVILEGES ON *.* TO '$mysql_remote_user_name'@'%'"
mysql -u$mysql_root_user_name -p$mysql_root_user_pwd -e"$sql_grant_user"
 
# 创建数据库
echo "Docker Mysql控制台创建数据库.... $mysql_database_name"
sql_create_database="create database IF NOT EXISTS $mysql_database_name"
mysql -u$mysql_root_user_name -p$mysql_root_user_pwd -e"$sql_create_database"
 
#用户创建Mysql数据库脚本
echo "Docker Mysql控制台创建数据库表.... $mysql_table_name"
sql_create_table="create table IF NOT EXISTS $mysql_table_name (
  F_ID varchar(255) NOT NULL,
  F_SIM varchar(20) NOT NULL,
  F_CHANNEL int(11) NOT NULL,
  F_ALARM decimal(18,0) NOT NULL,
  F_STORAGE_TYPE int(11) NOT NULL,
  F_STREAM_TYPE int(11) NOT NULL,
  F_START_TIME decimal(20,0) NOT NULL,
  F_END_TIME decimal(20,0) NOT NULL,
  F_FILE_PATH varchar(255) NOT NULL,
  F_FILE_SIZE decimal(18,0) NOT NULL,
  F_DATA_TYPE int(11) default NULL,
  PRIMARY KEY (F_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8"
mysql -u$mysql_root_user_name -p$mysql_root_user_pwd -d$mysql_database_name -e"$sql_create_table"
echo "***********************************上内容执行可能会有错误提示，请忽略**************************" 
