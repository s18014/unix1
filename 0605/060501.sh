#!/bin/bash
fnum="$(sudo find ~/ -type f | wc -l)"
dnum="$(sudo find ~/ -type d | wc -l)"

echo "$HOME 以下のファイルとディレクトリの数"
echo "ファイル $fnum 個"
echo "ディレクトリ $dnum 個"
