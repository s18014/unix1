#!/bin/bash

nowSec="$(date '+%s')"
thisYear="$(date '+%Y')"
nextYear="$((thisYear + 1))"
thisSummerSec="$(date -d "${thisYear}/09/10" '+%s')"
nextSummerSec="$(date -d "${nextYear}/09/10" '+%s')"

if [ $(date '+%m%d') == '0910' ]; then
    echo 0
elif [ $(($thisSummerSec - $nowSec)) -lt 0 ]; then
    echo $((($nextSummerSec - $nowSec) / 60 / 60 / 24 + 1))
else
    echo $((($thisSummerSec - $nowSec) / 60 / 60 / 24 + 1))
fi
