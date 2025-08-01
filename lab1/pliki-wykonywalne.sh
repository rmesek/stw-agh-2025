#!/bin/bash

for file in /bin/*
do
  if [ -f "$file" ] && [ -x "$file" ]; then
    basename "$file"
  fi
done