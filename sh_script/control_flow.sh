#!/bin/bash
cd "$(dirname "$0")"

echo ">>>>>>>>>>>>>>>>>>>>>>>>  if else："
# 如果else分支没有语句执行，就不要写这个else
# if condition
# then
#     command1 
#     command2
#     ...
#     commandN 
# fi

# if else:
# if condition
# then
#     command1 
#     command2
#     ...
#     commandN
# else
#     command
# fi

# if else-if else:
# if condition1
# then
#     command1
# elif condition2 
# then 
#     command2
# else
#     commandN
# fi

a=10
b=20
if [ $a == $b ]
then
   echo "a 等于 b"
elif [ $a -gt $b ]
then
   echo "a 大于 b"
elif [ $a -lt $b ]
then
   echo "a 小于 b"
else
   echo "没有符合的条件"
fi
# 输出：
# a 小于 b

# if else语句经常与test命令结合使用：
num1=$[2*3]
num2=$[1+5]
if test $[num1] -eq $[num2]
then
    echo '两个数字相等!'
else
    echo '两个数字不相等!'
fi
# 输出：
# 两个数字相等!

echo ">>>>>>>>>>>>>>>>>>>>>>>>  for loop："
# for var in item1 item2 ... itemN
# do
#     command1
#     command2
#     ...
#     commandN
# done

# in列表是可选的，如果不用它，for循环使用命令行的位置参数loop。
# 例如，顺序输出当前列表中的数字：
for loop in 1 2 3 4 5
do
    echo "The value is: $loop"
done
# 输出结果：
# The value is: 1
# The value is: 2
# The value is: 3
# The value is: 4
# The value is: 5

# 顺序输出字符串中的字符：str
for str in 'This is a string'
do
    echo $str
done
# 输出结果：
# This is a string

echo ">>>>>>>>>>>>>>>>>>>>>>>>  while loop："
# while循环用于不断执行一系列命令，也用于从输入文件中读取数据；命令通常为测试条件。格式为：
# while condition
# do
#     command
# done

int=1
while(( $int<=5 ))
do
    echo $int
    let "int++"
done
# 输出：
# 1
# 2
# 3
# 4
# 5
#  let 命令，它用于执行一个或多个表达式，变量计算中不需要加上 $ 来表示变量

# 无限循环:
# while :
# do
#     command
# done
# 或者:
# while true
# do
#     command
# done
# 或者:
# for (( ; ; ))
