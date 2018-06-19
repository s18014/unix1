#!/bin/bash
age=$(cat age | sort -n | count 1 1 )
max=$(cat age | sort -nr | head -n 1)
range=$1
if [ $# -eq 0 ]; then
    range=10
fi

i=0
while [ $i -le $((max / $range)) ]; do
  from=$((i * $range + 1))
  to=$((i * $range + $range))
  if [ $to -gt $max ]; then
      to=$((max + 1))
  fi
  echo "$(echo "$age" | sed -n $from,$to\p | awk '{i+=$2}END{print i}' | sed "s/\(.*\)/$((from - 1))~$((to - 1)) \1/g" )"
  i=$((i + 1))
done
