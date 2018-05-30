#!/bin/bash
cat ~/sample/file{1..3} | sort -u | grep -v '^A'
