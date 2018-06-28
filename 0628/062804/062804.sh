#!/bin/bash

awk -F, '{print $7}' personal_infomation.csv | sort | count 1 1 | sort -k2 -nr | head -n 5
