#!/bin/bash -xv
# SPDX-fileCopyrightText: 2025 Gen109
# SPDX-License-Identefier: GPL-3.0-only

ng () {
	echo $1行目が違うよ
	res=1
}

res=0

out=$(seq 5 | ./plus)
[ "${out}"=15 ] || ng "$LINENO"

out=$(echo あ| ./plus)
[ "$?" =1 ]      || ng "$LINENO"
[ "${out}"= "" ] || ng "$LINENO"

out=$(echo | ./plus)
[ "$?" =1 ]      || ng "$LINENO"
[ "${out}"= "" ] || ng "$LINENO"

["$res" = 0 ] && echo OK
exit $res
