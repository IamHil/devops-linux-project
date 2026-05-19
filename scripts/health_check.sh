#!/bin/bash

URL="http://localhost:1212"

response=$(curl -s -o /dev/null -w "%{http_code}" $URL)

if [ $response -eq 200 ]; then
    echo "$(date) - App is healthy" >> logs/health.log
else
    echo "$(date) - App is DOWN" >> logs/health.log
fi