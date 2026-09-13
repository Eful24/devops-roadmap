#!/bin/bash

THRESHOLD=80

DISK_USAGE=$(df -h / | awk 'NR==2 {gsub("%","",$5); print $5}')

echo "Disk Usage: ${DISK_USAGE}%"

if [ "$DISK_USAGE" -gt "$THRESHOLD" ]; then
    echo "WARNING: Disk utilization above ${THRESHOLD}%"
else
    echo "NORMAL: Disk utilization below ${THRESHOLD}%"
fi
