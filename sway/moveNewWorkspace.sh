#!/bin/sh

workspaces=$(swaymsg -rt get_workspaces | grep name | grep -o '[0-9]')

max=0
for i in $workspaces;
do
	if [ $(($i)) > $(($max)) ]; then
		max=$i
	fi
done
swaymsg move container to workspace number $((max+1))
