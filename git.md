## 分支相关
### 指定在某个commit上创建分支
* **git log**  查看想要创建分支的那个commit的id
* **git checkout commitid -b branch_name** 根据commit id创建新的分支
### 切换到已经存在的分支
* **git checkout branch_name**
### 切换到本地还不存在的分支，即 为远程的某个分支创建一个对应的本地分支
* **git branch -a** 列出所有分支，包括远程的分支
* **git checkout -b branch_name origin_branch_name**
***
## stash相关
### 直接保存，不添加备注信息
* **git stash**
### 保存时添加信息，方便后续查看
* **git stash save "save messages"**
### 查看stash list, 只是查看stash的列表，所以之前stash的时候加备注信息比较好
* **git stash list**
### 显示做了哪些改动，默认显示第一个存储，如果要显示其他stash，后面加stash@{$num}，比如第二个: git stash show stash@{1}，这个只是显示文件做了啥改动，增加了多少行删除了多少行，具体怎么改的不会显示
* **git stash show**
### 显示存储的具体改动，如果想显示其他存储，命令: git stash show stash@{$num} -p ，比如第二个: git stash show stash@{1} -p
* **git stash show stash@{$num} -p**
### 应用某个存储，但不会把存储从存储列表中删除，默认使用第一个存储，即stash@{0}，如果要使用其他的: git stash apply stash@{$num}，比如第二个: git stash apply stash@{1}
* **git stash apply stash@{$num}**
### 恢复之前缓存的工作目录，将缓存堆栈中的对应stash删除，并将对应修改应用到当前的工作目录下，默认为第一个stash，即stash@{0}，如果要应用并删除其他stash，命令: git stash pop stash@{$num} ，比如应用并删除第二个: git stash pop stash@{1}
* **git stash pop stash@{$num}**
### 丢弃stash@{$num}存储，从列表中删除这个存储
* **git stash drop stash@{$num}**
### 删除所有缓存的stash
* **git stash clear**