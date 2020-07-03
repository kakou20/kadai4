#!/bin/bash

#入力値を読み込む
#echo "２つの0より大きい数字を入力してください。"
#read a b
#入力値aのチェック
if  [[ "$1" =~ ^[0-9]+$ ]] ;then
	#入力値bのチェック
	if [[ "$2" =~ ^[0-9]+$ ]];then
		let a=$1 b=$2
		#入力値aとbの大きさチェック
		if [ $a -lt $b ];then 	
			let a_dummy=$a a=$b b=a_dummy
		fi
		#入力値の割り算のあまり
		let c=($a%$b)
		#あまりが0になるまで繰り返す
		while [ $c -ne 0 ]
		do	
			let dummy=c c=($b%$c) b=dummy
		done
		echo $b
	else 
     	echo "error"
	fi
else 
	echo "error"	
fi
