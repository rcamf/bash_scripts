#!/bin/bash
layout=$(setxkbmap -query | grep layout | awk '{print $NF}')

if [[ $layout = 'us' ]]
then
	setxkbmap de
	notify-send -t 2000 KB-Layout "Changed KB-Layout to DE."
else
	setxkbmap us 
	notify-send -t 2000 KB-Layout "Changed KB-Layout to US."
fi
