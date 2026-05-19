#!/bin/bash

THRESHOLD=80

usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$usage" -ge "$THRESHOLD" ]; then
    echo "$(date) - WARNING: Disk usage is at ${usage}%" >> logs/disk.log
else
    echo "$(date) - Disk usage is healthy at ${usage}%" >> logs/disk.log
fi