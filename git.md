## 分支相关
### 指定在某个commit上创建分支
* git log  查看想要创建分支的那个commit的id
* git checkout commitid -b branch_name 根据commit id创建新的分支
### 切换到已经存在的分支
* git checkout branch_name
### 切换到本地还不存在的分支，即 为远程的某个分支创建一个对应的本地分支
* git branch -a 列出所有分支，包括远程的分支
* git checkout -b branch_name origin_branch_name