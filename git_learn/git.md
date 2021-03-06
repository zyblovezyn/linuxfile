	
#git 学习
	DVCS  Distributed Version Control System 分布式版本控制协议
	git每一次提取最新版本的文件快照，都把代码仓库完整的镜像下来。
	
	git log -- 回顾提交历史
	git log -p -2 显示最近两次的更新
	git log -U1 --word-diff -- 单词层面的比较
	git log -stat 仅显示增改行统计
	
	方法一：保留本地修改过的代码，并把git服务器上的代码pull到本地
	git stash -- stash 储藏
	git pull origin master
	git stash pop
	如此一来，服务器上的代码更新到了本地，而且你本地的代码也没有被覆盖，
	之后用add,commit,pull命令即可更新本地代码到服务器了。

	方法二：完全覆盖本地代码，只保留服务器端代码，则直接回退到上一个版本
	再进行pull
	git reset --head
	git pull origin master -- origin master 表示git的主分支

	修改最后一次提交
	有时候我们提交完了才发现漏掉了几个文件没有加，或者提交信息写错了。
	想要撤消刚才的提交操作，可以使用 --amend 选项重新提交：

	$ git commit --amend
	此命令将使用当前的暂存区域快照提交。如果刚才提交完没有作任何改动，
	直接运行此命令的话，相当于有机会重新编辑提交说明，
	但将要提交的文件快照和之前的一样。

	git remote add [shortname] url -- 添加远程库
	git remote -v 	--查看远程库信息

	git fetch [remote-name]	--从远程仓库抓取数据到本地
				--会抓取所有本地仓库没有的数据
	git remote show origin	--显示远程仓库的信息
	git remote rename [oldname] [newname]	--重命名远程仓库
	git remote rm [remotename]	--移除远程仓库

	git tag -a v1.0.0 -m 'my version 1.0.0'	-- a:annotate 注释 注解
	git config --global alias.co checkout -- 设置checkout的别名为co

	git branch testing -- 创建testing分支
	git checkout testing -- 切换到testing分支

	git checkout -b iss53
	相当于
	git branch iss53
	git checkout iss53

	git branch -d iss53 -- 删除分支

#【教程】学会Git玩转Github【全】 bilibili 视频学习项目




