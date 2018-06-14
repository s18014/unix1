#!/bin/bash

year="$1"
mod4=$((year % 4))
mod100=$((year % 100))
mod400=$((year % 400))


if [ $mod4 -eq 0 ] && [ ! $mod100 -eq 0 ] || [ $mod400 -eq 0 ]; then
    echo is leap year
else
    echo is not leap year
fi
