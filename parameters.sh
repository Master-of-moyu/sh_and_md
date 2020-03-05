#!/bin/bash
cd "$(dirname "$0")"

echo "Shell 传递参数实例！";
echo "执行的文件名：$0";
echo "第一个参数为：$1";
echo "第二个参数为：$2";
echo "第三个参数为：$3";
echo "参数个数为：$#";
echo "传递的参数作为一个字符串显示：$*";

echo "-- \$* 演示 ---"
for i in "$*"; do
    echo $i
done

echo "-- \$@ 演示 ---"
for i in "$@"; do
    echo $i
done

#  @ 或 * 代表 “所有的”， 如获取输入的所有的参数、获取数组所有的元素
#  # 代表个数，如字符串长度、数组长度等