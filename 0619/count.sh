#!/bin/bash
age=$(cat age | sort -n | count 1 1)
max=$(cat age | sort -nr | head -n 1)
i=0

while [ $i -le $((max / 10)) ]; do
  ten=$((i * 10))
  tenToNine=$((i * 10 + 9))
  from=$((i * 10 + 1))
  to=$((i * 10 + 10))
  echo $(cat age | sort -n | count 1 1 | sed -n $from,$to\p | awk '{i+=$2}END{print i}' | sed "s/\(.*\)/$ten~$tenToNine  \1/g") 
  i=$((i + 1))
done
