#!/bin/bash
THRESHOLD=90

diskusage=$(df -h | grep /dev/nvme0n1p3 | awk '{print $5}' | cut -d'%' -f1)

if [ "$diskusage" -gt "$THRESHOLD" ]; then
    echo "Disk usage is high (${diskusage}%)"
else
    echo "Disk usage is low (${diskusage}%)"
fi