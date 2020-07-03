#!/bin/bash

#実行結果(2と４を入力した場合)
./gcd.sh 2 4 > /tmp/result-$$
#出てほしい出力
echo 2 > /tmp/ans-$$

diff /tmp/ans-$$ /tmp/result-$$ || exit 1

#実行結果(3を入力した場合)
./gcd.sh 3 > /tmp/result-$$
#出てほしい出力
echo "error" > /tmp/ans-$$

diff /tmp/ans-$$ /tmp/result-$$ || exit 1

#実行結果(文字を入力した場合)
./gcd.sh a b> /tmp/result-$$
echo "error" > /tmp/ans-$$

diff /tmp/ans-$$ /tmp/result-$$ || exit 1

echo "complete"


#result=$(./gcd.sh)
#echo $result
#if [ $result = 2 ] ; then
#	exit 0
#else 
#	exit 1
#fi
