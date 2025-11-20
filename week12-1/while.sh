#!/bin/bash
if [[ $TERM != "xterm" ]]; then
	echo "current terminal is not x-terminal"
	exit 1
fi
i=0
while [[ $i -lt 4 ]]; do
	gnome-terminal &
	let "i += 1"
done
