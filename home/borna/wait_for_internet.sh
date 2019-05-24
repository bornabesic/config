#!/bin/bash

while true
do
    wget -q --spider http://google.com
    if [ $? -eq 0 ]; then
        break
    fi
    sleep 1
done
