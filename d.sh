#!/bin/bash
THRESHOLD=90

diskusage=$(df -h | grep /dev/nvme0n1p3 | awk '{print $5}' | cut -d'%' -f1)

if ["$diskusage -gt $THRESHOLD"]; then
   echo"diskusage is low (${diskusage}%"
else
   echo"diskusage is high (${diskusage}%"

fi
