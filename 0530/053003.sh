#!/bin/bash
cat ~/sample/file{1..3} | sort -u | sed 's/\(.*\)/"\1"/'
