#!/bin/bash
x=0
y=0
w=0
h=0
while read LINE; do
   if true==$(echo $LINE | grep "Absolute upper-left Y" ); then
      y=$( echo $LINE | grep "Absolute upper-left Y" | sed -E "s/Absolute upper-left Y: +([0-9]+)/\1/g")
   fi

   if true==$(echo $LINE | grep "Absolute upper-left X" ); then
      x=$( echo $LINE | grep "Absolute upper-left X" | sed -E "s/Absolute upper-left X: +([0-9]+)/\1/g")
   fi

   if true==$(echo $LINE | grep "Width:" ); then
      w=$( echo $LINE | sed -E "s/.*Width: +([0-9]+)/\1/g")
   fi

   if true==$(echo $LINE | grep "Height:" ); then
      h=$( echo $LINE | sed -E "s/.*Height: +([0-9]+)/\1/g")
   fi
done
echo "${w}x${h}+${x}+${y}"
