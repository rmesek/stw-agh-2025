#!/bin/bash

HEIGHT=$1
BASE_WIDTH=$2

left=$(( HEIGHT - 1 ))
right=$(( BASE_WIDTH - HEIGHT ))
if ((left >= right)); then
    left=$(( (BASE_WIDTH - 1) / 2 ))
    right=$(( BASE_WIDTH / 2 ))
fi

for ((i=0; i<HEIGHT; i++)); do
    for ((j=0; j<BASE_WIDTH; j++)); do
        if (( j >= left && j <= right )); then
            echo -n "*"
        else
            echo -n " "
        fi
    done
    echo ""

    if (( left > 0 && right < BASE_WIDTH )); then
        ((left--))
        ((right++))
    fi
done