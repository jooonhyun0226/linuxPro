#!/bin/bash
aflag=0
bflag=

if [[ $# -ne  ]]; then
	echo "Usahe : $(basename $) arg" >&2
	exit 
fi

case $1 in
	-a) aflag = 1
		;;
	-b) bflag = 1
		;;
	*) echo "Usage : $ (basename $0) [-a] [-b]" >&2
		exit 1
esac
echo "aflag=$aflag, bflag=$bflag"
