#!/bin/bash

find logs/*.log -type f -size +1M -delete

echo "$(date) : Old logs cleaned" >> logs/cleanup.log

