#!/bin/bash
for i; do
	if [[ ! -d "$1" ]]; then
		echo "$1 is not a dir" >&2
		exit 1
	fi
	for f in 'ls $i'; do
		file $i/$f | grep "ASCII\|script"
	done
done

exit 0
