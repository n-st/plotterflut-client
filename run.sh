#!/bin/sh
initial_x=47
cat carrotdust.plotter.txt | while read line; do (echo "$initial_x"; echo "$line") | ./plot-line.sh; done
