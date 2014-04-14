#!/bin/sh

(setxkbmap -query | grep -q "layout:\s\+us") && setxkbmap no || setxkbmap us
xmodmap -e 'keycode 66 = Control_L'
xmodmap -e 'clear Lock'
xmodmap -e 'add Control = Control_L'
