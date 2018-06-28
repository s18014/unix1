#!/bin/bash

curSec=$(date '+%s')
FESec=$(date -d '5/08' '+%s')
nextYear=$(date '+%Y' | awk '$1+=1')
NYFESec=$(date -d "$nextYear/5/08" '+%s')


if [ $(date '+%m%d') -eq 0508 ]; then
    echo today is 5/8
elif [ $curSec -gt $FESec ]; then
    echo $(((curSec - FESec) / 60 / 60 / 24)) days until 5/8
else
    echo $(((NYFESec - curSec) / 60 / 60 / 24 - 1)) days until 5/8
fi

