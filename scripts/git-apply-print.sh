#!/bin/sh

cd "$(dirname "$0")" || exit 
cd ../ || exit # cd to the git repository root

git log --oneline --reverse 8587d56..b9d3006 | sed -r 's/(^\w+\b)/git apply patches\/\1.patch #/'
