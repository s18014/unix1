#!/bin/bash
cat ~/sample/file{1..3} | sort | uniq | sed 's/\(.*\)/"\1"/'
