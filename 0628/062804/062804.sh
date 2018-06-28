#!/bin/bash

awk -F, '{print $7}' personal_infomation.csv | sed 1,1d | sort | count 1 1 | sort -k2 -nr | head -n 5
