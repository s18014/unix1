#!/bin/bash
cat ~/sample/file{1..3} | sort | uniq | wc -c
