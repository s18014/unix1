#!/bin/bash
sudo find /etc/ -type f | sudo xargs grep '172.16.40.1' | cut -d : -f1 | uniq
