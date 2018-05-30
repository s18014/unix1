#!/bin/bash
cat ~/sample/file{1..3} | sort | uniq -u | grep -v '^A'
