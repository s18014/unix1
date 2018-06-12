#!/bin/bash

sudo find ~/ -type f | sed 's/\(.*\)/\"\1\"/g' | sudo xargs du -h | sort -nr | head -n 5
