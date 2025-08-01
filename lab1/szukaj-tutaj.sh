#!/bin/bash

if [ -z "$1" ]; then
    echo "Użycie: $0 <nazwa_pliku>"
    exit 1
fi

find . -name "$1"