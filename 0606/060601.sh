#!/bin/bash

_IFS=$IFS
IFS=$'\n'
for file in $(sudo find ~/ -type f); do
    size="$(sudo wc -c $file | awk '{print $1}')"
    if [ $size -eq 0 ]; then
        echo $file
    fi
done
IFS=$_IFS
