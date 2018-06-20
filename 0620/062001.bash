#!/bin/bash

check=""
strings=""
for i in $(seq 1 100); do
    if [ $((i % 3)) -eq 0 ]; then
        check="FIZZ"
    fi
    if [ $((i % 5)) -eq 0 ]; then
        check="BUZZ"
    fi
    if [ $((i % 15)) -eq 0 ]; then
        check="FIZZBUZZ"
    fi
    if [ ! -z $check ]; then
        strings=$strings,$check
    else
        strings=$strings,$i
    fi
    check=""
done

echo $strings | sed 's/^,//g'
