#!/bin/bash
# Input: PATH to data
cat $* | tr -dC '[0-9]\n' > temp
sed -E 's/^([0-9])(.*)/\1/g' temp > first
sed -E 's/(.*)([0-9])$/\2/g' temp > last
paste -d"\0" first last > numbers
awk '{sum += $0} END {print sum}' numbers
