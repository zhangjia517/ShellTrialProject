#!/bin/bash
##RANDOM随机函数，100取余就可以获得1-100的随机数字
n=$[$RANDOM%100]
while :
do
read -p "请输入一个1-100间的整数：" n1
n2=`echo $n1|sed 's/[0-9]//g'`
if [ ! -z $n2 ]
then
    echo "你输入的不是1-100的数字！"
    continue
   fi
if [ $n1 == $n ]
then 
   echo "你猜对了！"
   break
elif [ $n1 -gt $n ]
then 
   echo "你输入的数字太大了！"
   continue
else
    echo "你输入的数字太小了！"
    continue
fi
done
