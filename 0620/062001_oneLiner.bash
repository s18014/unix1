#!/bin/bash

seq 1 100 | awk '{i=$1}{if ($1%3==0){i="FIZZ"}}{if ($1%5==0){i="BUZZ"}}{if ($1%15==0){i="FIZZBUZZ"}}{print i}' | sed 's/\(.*\)/\1,/g' | xargs echo | sed 's/ //g' | sed 's/,$//g'
