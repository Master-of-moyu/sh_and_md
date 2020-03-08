#!/bin/bash
cd "$(dirname "$0")"

# 表达式和运算符之间要有空格，例如 2+2 是不对的，必须写成 2 + 2，这与我们熟悉的大多数编程语言不一样。
# 完整的表达式要被 ` ` 包含，注意这个字符不是常用的单引号，在 Esc 键下边。
# 注意：条件表达式要放在方括号之间，并且要有空格，例如: [$a==$b] 是错误的，必须写成 [ $a == $b ]。
val=`expr 2 + 2`
echo "两数之和为 : $val"
echo "两数之和为 : `expr 2 + 3`"
# 输出： 4  5

echo ">>>>>>>>>>>>>>>> 表达式："
# 乘号(*)前边必须加反斜杠(\)才能实现乘法运算
# 条件表达式要放在方括号之间，并且要有空格，例如: [$a==$b] 是错误的，必须写成 [ $a == $b ]
a=10
b=20

val=`expr $a + $b`
echo "a + b : $val"

val=`expr $a - $b`
echo "a - b : $val"

val=`expr $a \* $b`
echo "a * b : $val"

val=`expr $b / $a`
echo "b / a : $val"

val=`expr $b % $a`
echo "b % a : $val"

if [ $a == $b ]
then
   echo "a 等于 b"
fi

if [ $a != $b ]
then
   echo "a 不等于 b"
fi
# 输出：
# a + b : 30
# a - b : -10
# a * b : 200
# b / a : 2
# b % a : 0
# a 不等于 b

echo ">>>>>>>>>>>>>>>> 关系运算符："
# 关系运算符只支持数字，不支持字符串，除非字符串的值是数字
# 假定变量 a 为 10，变量 b 为 20
# -eq	检测两个数是否相等，相等返回 true。	                 [ $a -eq $b ] 返回 false。
# -ne	检测两个数是否不相等，不相等返回 true。	            [ $a -ne $b ] 返回 true。
# -gt	检测左边的数是否大于右边的，如果是，则返回 true。	     [ $a -gt $b ] 返回 false。
# -lt	检测左边的数是否小于右边的，如果是，则返回 true。	     [ $a -lt $b ] 返回 true。
# -ge	检测左边的数是否大于等于右边的，如果是，则返回 true。    [ $a -ge $b ] 返回 false。
# -le	检测左边的数是否小于等于右边的，如果是，则返回 true。	   [ $a -le $b ] 返回 true。
if [ $a -eq $b ]
then
   echo "$a -eq $b : a 等于 b"
else
   echo "$a -eq $b: a 不等于 b"
fi

if [ $a -ne $b ]
then
   echo "$a -ne $b: a 不等于 b"
else
   echo "$a -ne $b : a 等于 b"
fi

if [ $a -gt $b ]
then
   echo "$a -gt $b: a 大于 b"
else
   echo "$a -gt $b: a 不大于 b"
fi

if [ $a -lt $b ]
then
   echo "$a -lt $b: a 小于 b"
else
   echo "$a -lt $b: a 不小于 b"
fi

if [ $a -ge $b ]
then
   echo "$a -ge $b: a 大于或等于 b"
else
   echo "$a -ge $b: a 小于 b"
fi

if [ $a -le $b ]
then
   echo "$a -le $b: a 小于或等于 b"
else
   echo "$a -le $b: a 大于 b"
fi
# 输出：
# 10 -eq 20: a 不等于 b
# 10 -ne 20: a 不等于 b
# 10 -gt 20: a 不大于 b
# 10 -lt 20: a 小于 b
# 10 -ge 20: a 小于 b
# 10 -le 20: a 小于或等于 b

echo ">>>>>>>>>>>>>>>> 布尔运算符："
# 假定变量 a 为 10，变量 b 为 20：
# !	非运算，表达式为 true 则返回 false，否则返回 true。	      [ ! false ] 返回 true。
# -o	或运算，有一个表达式为 true 则返回 true。	                  [ $a -lt 20 -o $b -gt 100 ] 返回 true。
# -a	与运算，两个表达式都为 true 才返回 true。	                  [ $a -lt 20 -a $b -gt 100 ] 返回 false。
if [ $a != $b ]
then
   echo "$a != $b : a 不等于 b"
else
   echo "$a == $b: a 等于 b"
fi

if [ $a -lt 100 -a $b -gt 15 ]
then
   echo "$a 小于 100 且 $b 大于 15 : 返回 true"
else
   echo "$a 小于 100 且 $b 大于 15 : 返回 false"
fi

if [ $a -lt 100 -o $b -gt 100 ]
then
   echo "$a 小于 100 或 $b 大于 100 : 返回 true"
else
   echo "$a 小于 100 或 $b 大于 100 : 返回 false"
fi

if [ $a -lt 5 -o $b -gt 100 ]
then
   echo "$a 小于 5 或 $b 大于 100 : 返回 true"
else
   echo "$a 小于 5 或 $b 大于 100 : 返回 false"
fi
# 输出：
# 10 != 20 : a 不等于 b
# 10 小于 100 且 20 大于 15 : 返回 true
# 10 小于 100 或 20 大于 100 : 返回 true
# 10 小于 5 或 20 大于 100 : 返回 false

echo ">>>>>>>>>>>>>>>> 逻辑运算符："
# 假定变量 a 为 10，变量 b 为 20：
# &&	逻辑的 AND	[[ $a -lt 100 && $b -gt 100 ]] 返回 false
# ||	逻辑的 OR	[[ $a -lt 100 || $b -gt 100 ]] 返回 true
if [[ $a -lt 100 && $b -gt 100 ]]
then
   echo "返回 true"
else
   echo "返回 false"
fi

if [[ $a -lt 100 || $b -gt 100 ]]
then
   echo "返回 true"
else
   echo "返回 false"
fi
# 输出：
# 返回 false
# 返回 true

echo ">>>>>>>>>>>>>>>> 字符串运算符："
# 假定变量 a 为 "abc"，变量 b 为 "efg"：
# =	检测两个字符串是否相等，相等返回 true。	      [ $a = $b ] 返回 false。
# !=	检测两个字符串是否相等，不相等返回 true。	       [ $a != $b ] 返回 true。
# -z	检测字符串长度是否为0，为0返回 true。	         [ -z $a ] 返回 false。
# -n	检测字符串长度是否不为 0，不为 0 返回 true。	    [ -n "$a" ] 返回 true。
# $	检测字符串是否为空，不为空返回 true。	         [ $a ] 返回 true。 
a="abc"
b="efg"

if [ $a = $b ]
then
   echo "$a = $b : a 等于 b"
else
   echo "$a = $b: a 不等于 b"
fi

if [ $a != $b ]
then
   echo "$a != $b : a 不等于 b"
else
   echo "$a != $b: a 等于 b"
fi

if [ -z $a ]
then
   echo "-z $a : 字符串长度为 0"
else
   echo "-z $a : 字符串长度不为 0"
fi

if [ -n "$a" ]
then
   echo "-n $a : 字符串长度不为 0"
else
   echo "-n $a : 字符串长度为 0"
fi

if [ $a ]
then
   echo "$a : 字符串不为空"
else
   echo "$a : 字符串为空"
fi
# 输出：
# abc = efg: a 不等于 b
# abc != efg : a 不等于 b
# -z abc : 字符串长度不为 0
# -n abc : 字符串长度不为 0
# abc : 字符串不为空

# 文件测试运算符
# 文件测试运算符用于检测 Unix 文件的各种属性。
# 属性检测描述如下：
# -b file	检测文件是否是块设备文件，如果是，则返回 true。	                             [ -b $file ] 返回 false。
# -c file	检测文件是否是字符设备文件，如果是，则返回 true。	                          [ -c $file ] 返回 false。
# -d file	检测文件是否是目录，如果是，则返回 true。	                                  [ -d $file ] 返回 false。
# -f file	检测文件是否是普通文件（既不是目录，也不是设备文件），如果是，则返回 true。	    [ -f $file ] 返回 true。
# -g file	检测文件是否设置了 SGID 位，如果是，则返回 true。                    	     [ -g $file ] 返回 false。
# -k file	检测文件是否设置了粘着位(Sticky Bit)，如果是，则返回 true。	                 [ -k $file ] 返回 false。
# -p file	检测文件是否是有名管道，如果是，则返回 true。	                             [ -p $file ] 返回 false。
# -u file	检测文件是否设置了 SUID 位，如果是，则返回 true。                    	     [ -u $file ] 返回 false。
# -r file	检测文件是否可读，如果是，则返回 true。	                                  [ -r $file ] 返回 true。
# -w file	检测文件是否可写，如果是，则返回 true。	                                  [ -w $file ] 返回 true。
# -x file	检测文件是否可执行，如果是，则返回 true。                                    [ -x $file ] 返回 true。
# -s file	检测文件是否为空（文件大小是否大于0），不为空返回 true。                       [ -s $file ] 返回 true。
# -e file	检测文件（包括目录）是否存在，如果是，则返回 true。	                        [ -e $file ] 返回 true。
