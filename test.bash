#!/bin/bash

ng () {
	echo $1行目が違うよ
	res=1
}

res=0
a=森本
[ "$a" = 斎藤 ] || ng "$LINENO"
[ "$a" = 森本 ] || ng "$LINENO"

exit $res
