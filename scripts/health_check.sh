#!/bin/bash

echo "checking application health..."

STATUS=$(curl -s http://localhost:1212)

if [[ $STATUS == *"Running"* ]]; then
    echo "$(date) : Application is UP" >> logs/health.log
    echo "Application is healthy"
else
    echo "$(date) : Application is DOWN" >> logs/health.log
    echo "Application is not responding"
fi
