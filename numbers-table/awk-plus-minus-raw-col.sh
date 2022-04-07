#!/bin/bash
argB=$1
argA=$2
awk -F"," '
    NR==1 {split($0,a)}
    NR==3 {split($0,b)}
    END {printf "%d ", b['$argB']-a['$argA']; printf "\n"}
' numbers.txt

# ------- numbers.txt -------
# 1,2,3,4,5
# 2,6,6,8,12
# 1,4,6,3,1
