#!/bin/bash

NY=$(seq 0 28 | awk '{i=1990}{i+=$1}{print i 0 101}')
weeks=""

for i in $NY; do
    week="$week$(date -d "$i" "+%u %a")\n"
done

echo -e $week | sort -n | sed 1d  | count 2 2
