#!/bin/sh
i3status | while :
do
    read line
    echo "$(cat /tmp/gtd) $line" || exit 1
done
#do
    #read line
    #echo "TODO:$(task ls | sed -n '4s/[[:blank:]]\+/ /pg' )\
#| LG: $(setxkbmap -print | grep xkb_symbols | awk -F"+" '{print $2}') \
#| $line" || exit 1
#done
