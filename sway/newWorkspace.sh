#!/bin/sh

workspaces=$(swaymsg -rt get_workspaces | grep name | grep -o '[0-9]')

maximum=0
for i in $workspaces;
do
	if [ $(($i)) > $(($maximum)) ]; then
		maximum=$i
	fi
done
swaymsg workspace number $((maximum+1))
