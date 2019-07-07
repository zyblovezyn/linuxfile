# shell
 
    /etc/profile
	/etc/bashrc 系统级
	
	~./bash_profile
	~/.bashrc	用户级

	~/.bash_logout
	~/.bash_history

	su - username 加 - 的话就是执行系统级的环境后执行用户级 用户会进入新的环境中(家目录变了 login shell)
	/etc/profile
	/etc/bashrc 系统级
	
	~./bash_profile
	~/.bashrc	用户级

	su username 不加 - 在老的环境中（家目录没有变 nologin shell）
	/etc/bashrc 系统级
	~/.bashrc	用户级
	!!执行上一个命令

	2019/5/19 星期日 16:11:02 
	kill %3 给作业号为3的发信号
	kill 3 给进程号为3的发信号
### 快捷键
	ctrl + d 退出
			a 最前
			e 最后
			u 往前删除
			s 锁屏
			q 取消锁屏
			k 删除光标后的

### ping
	ping -c 4 ipaddress ping四次后结束
	true 永远返回真 false 永远返回假
	&& || 具有逻辑判断
	


