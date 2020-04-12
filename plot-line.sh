#!/bin/bash

read -r initial_x
read -r line
set -- $line
y=$1
pixels=$2

echo Now printing row "$y"
for i in $(seq 0 $((${#pixels}-1)))
do
    x=$((i + initial_x))
    value=${pixels:$i:1}
    echo Coord: "$x" "$y" -- Value: "$value"
    if [ "$value" = 0 ]
    then
        intensity=6
    else
        intensity=23
    fi
    while curl -v "https://team-tfm.com/plotterflut/api?x=$x&y=$y&intensity=$intensity" |& grep 'HTTP/1.1 409'
    do
        echo -n .
        sleep 1
    done
    sleep 0.3
done
exit
