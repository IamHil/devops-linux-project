#!/bin/bash

THRESHOLD=80

USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "$(date) : Disk usage is above threshold at ${USAGE}%" >> logs/disk.log
else
    echo "$(date) : Disk usage normal at ${USAGE}%" >> logs/disk.log
fi

