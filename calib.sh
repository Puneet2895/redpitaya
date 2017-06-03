#!/bin/sh
calib -d
calib -rv
N=1000
acquire 1000 > samples.txt
# Offset is the negative mean of ADC samples
CH1offset=$(cat samples.txt | awk '{ sum+=$1} END {printf ("%.0f\n", -sum/1000)}')

calib -r | awk -v offset=${CH1offset} '{$5=offset}1' | calib -w